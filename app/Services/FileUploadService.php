<?php

namespace App\Services;

use Exception;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Illuminate\Support\Str;

class FileUploadService
{
    public function uploadFile(
        $file,
        $folderPath,
        $compress = 80,
        $makeThumnail = true,
        $thumbnailWidth = 80,
        $thumbnailHeight = 80,
        $thumbnailQuality = 30
    ) {
        if (empty($file)) return null;
        try {
            $manager = new ImageManager(new Driver());

            //Tạo đường dẫn cho ảnh
            if (!Storage::exists('public/' . $folderPath)) {
                Storage::makeDirectory('public/' . $folderPath);
            }

            //Đọc file
            $image = $manager->read($file);

            $fileNameHash = Str::random(30) . time() . '.' . $file->getClientOriginalExtension();

            $filePath = 'public/' . $folderPath . '/' . $fileNameHash;

            $image->save(storage_path('app/' . $filePath), $compress);

            if ($makeThumnail) {
                if (!Storage::exists('public/' . $folderPath . '/thumbnails')) {
                    Storage::makeDirectory('public/' . $folderPath . '/thumbnails');
                }
                $thumbnailPath = 'public/' . $folderPath . '/thumbnails/' . $fileNameHash;
                $thumbnailImage = $manager->read($file);
                //resize thumbnail theo tỉ lệ width height
                $thumbnailImage->resize($thumbnailWidth, $thumbnailHeight, function ($constraint) {
                    $constraint->aspectRatio(); //Duy trì tỉ lệ
                    $constraint->upsize(); // Không phóng to nếu ảnh nhỏ hơn kích thước
                });

                //Giảm chất lượng của thumbnail
                $thumbnailImage->save(storage_path('app/' . $thumbnailPath), $thumbnailQuality);
            }

            return [
                'file_path' => Storage::url($filePath),
                'file_path_thumbnail' => Storage::url($thumbnailPath)
            ];
        } catch (Exception $e) {
            return null;
        }
    }
    function deleteFile($filePath)
    {
        $fileToDelete = str_replace('/storage', 'public', $filePath);
        if (Storage::exists($fileToDelete)) {
            Storage::delete($fileToDelete);
            return true;
        }
        return false;
    }
}
