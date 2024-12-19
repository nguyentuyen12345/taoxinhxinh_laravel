<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductImage;
use Image;
use Illuminate\Support\Facades\File;

class ProductImageController extends Controller
{
    public function update(Request $request)
    {
        $image = $request->image;
        $ext = $image->getClientOriginalExtension();
        // $tempImageLocation = $image->getImagePath();
        $sourcePath = $image->getPathName();

        $productImage = new ProductImage();
        $productImage->product_id = $request->input('product_id');

        $productImage->image = 'NULL';
        $productImage->save();

        $productId = $request->input('product_id'); // Giả sử bạn truyền product_id từ form
        $imageName = $productId . '-' . $productImage->id . '-' . time() . '.' . $ext;

        $productImage->image = $imageName;

        $productImage->save();

        return response()->json([
            'status' => true,
            'image_id' => $productImage->id,
            'ImagePath' => asset('uploads/product' . $productImage->image),
            'message' => 'Image saved successfully'
        ]);
    }
    public function destroy(Request $request)
    {

        $productImage = ProductImage::find($request->id);

        if (empty($productImage)) {
            return response()->json([
                'status' => false,
                'message' => 'Image not found'
            ]);
        }

        //delete image from folder
        File::delete(public_path('uploads/product' . $productImage->image));
        $productImage->delete();

        return response()->json([
            'status' => true,
            'message' => 'Image deleted successfully'
        ]);
    }
}
