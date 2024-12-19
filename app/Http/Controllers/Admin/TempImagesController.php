<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\TempImage;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class TempImagesController extends Controller
{
    public function create(Request $request)
    {
        $images = $request->file('image');
        // $imagePaths = [];
        // $imageIds = [];

        if ($images && is_array($images)) {
            foreach ($images as $image) {
                $ext = $image->getClientOriginalExtension();
                // $newName = time() . '-' . uniqid() . '.' . $ext;
                $newName = time() . '.' . $ext;

                $tempImage = new TempImage();
                $tempImage->name = $newName;
                $tempImage->save();


                $image->move(public_path() . '/temp' . $newName);
                // Tạo thumbnail
                $sourcePath = public_path() . '/temp/' . $newName;
                $destPath = public_path() . '/temp/thumb/' . $newName;
                $image->Image::make($sourcePath);
                $image->fit(300, 275);
                $image->save($destPath);
            }

            return response()->json([
                'status' => true,
                'image_id' => $tempImage->id,
                'ImagePath' => asset('/temp/thumb/' . $newName),
                'message' => 'Images uploaded successfully'
            ]);
        }

        return response()->json([
            'status' => false,
            // 'image_id' => $tempImages->id,
            'message' => 'No images uploaded'

        ]);
    }
}
