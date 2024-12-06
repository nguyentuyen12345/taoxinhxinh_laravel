<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\Category;
use App\Models\TempImage;
use Illuminate\Support\Facades\File;
use Image;



class CategoryController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::latest();


        if (!empty($request->get('keyword'))) {

            $categories = $categories->where('name', 'like', '%' . $request->get('keyword') . '%');
        }
        $categories = $categories->paginate(10);

        return view('admin.category.list', compact('categories'));
    }

    public function create()
    {
        return view('admin.category.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories',
        ]);

        if ($validator->passes()) {
            $category = new Category();
            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            //save Igmage here

            if (!empty($request->image_id)) {
                $tempImage = TempImage::find($request->image_id);
                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);

                $newImageName = $category->id . '.' . $ext;
                $sPath = public_path() . '/temp/' . $tempImage->name;
                $dPath = public_path() . '/uploads/Category/' . $newImageName;
                File::copy($sPath, $dPath);

                // Generate Image Thumbnail
                // $img = Image::make(public_path('images/foo.jpg'));
                // $dPath = public_path().uploads/Category/thumb/'.$newImageName';
                // $img = Image::make($sPath);
                // $img->resize(450,600);
                // $img->save($dPath);
                // $img->resize(800, 600, function ($constraint) {
                //     $constraint->aspectRatio();
                //     $constraint->upsize();
                // });



                $category->image = $newImageName;
                $category->save();
            }


            session()->flash('success', 'Category added successfully');
            return response()->json([
                'status' => true,
                'message' => 'Category added successfully'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
        return redirect()->route('categories.html');
    }


    public function edit($categoryId, Request $request)
    {
        // Hiển thị trang sửa category
        $category = Category::find($categoryId);
        if (empty($category)) {
            return redirect()->route('categories . index)');
        }

        return view('admin.category.edit', compact('category'));
    }


    public function update($categoryId, Request $request)
    {
        // Tìm category theo ID
        $category = Category::find($categoryId);

        if (empty($category)) {
            return response()->json([
                'status' => false,
                'notFound' => true,
                'message' => 'Category not found'
            ]);
        }

        // Xác thực dữ liệu
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories,slug,' . $category->id . ',id',
        ]);

        // Nếu dữ liệu hợp lệ, tiến hành cập nhật
        if ($validator->passes()) {
            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            // Cập nhật ảnh nếu có
            $oldImage = $category->image;
            if (!empty($request->image_id)) {
                $tempImage = TempImage::find($request->image_id);

                if (!$tempImage) {
                    return response()->json([
                        'status' => false,
                        'message' => 'Ảnh tạm không tồn tại'
                    ]);
                }

                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);

                $newImageName = $category->id . '-' . time() . '.' . $ext;
                $sPath = public_path() . '/temp/' . $tempImage->name;
                $dPath = public_path() . '/uploads/Category/' . $newImageName;

                // Kiểm tra nếu thư mục đích không tồn tại, tạo mới
                if (!file_exists(public_path('/uploads/Category/'))) {
                    mkdir(public_path('/uploads/Category/'), 0755, true);
                }

                File::copy($sPath, $dPath);

                // Xử lý ảnh thumbnail
                $sPath = public_path() . '/uploads/category/' . $newImageName;
                $dPath = public_path() . '/uploads/category/thumb/' . $newImageName;

                // Tạo thư mục thumbnail nếu chưa tồn tại
                if (!file_exists(public_path('uploads/category/thumb/'))) {
                    mkdir(public_path('uploads/category/thumb/'), 0755, true);
                }

                // Cập nhật ảnh mới
                $category->image = $newImageName;
                $category->save();

                // Xóa ảnh cũ nếu có
                if ($oldImage) {
                    File::delete(public_path() . '/uploads/category/thumb/' . $oldImage);
                    File::delete(public_path() . '/uploads/category/' . $oldImage);
                }
            }

            return response()->json([
                'status' => true,
                'message' => 'Đã cập nhật danh mục thành công'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }



    public function destroy($categoryId, Request $request)
    {
        $category = Category::find($categoryId);

        if (!$category) {
            return response()->json([
                'status' => false,
                'message' => 'Danh mục không tồn tại',
            ]);
        }

        try {
            // Xóa file ảnh
            File::delete(public_path('uploads/category/thumb/' . $category->image));
            File::delete(public_path('uploads/category/' . $category->image));

            // Xóa danh mục khỏi cơ sở dữ liệu
            $category->delete();

            return response()->json([
                'status' => true,
                'message' => 'Đã xóa danh mục thành công',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Lỗi khi xóa danh mục: ' . $e->getMessage(),
            ]);
        }
    }
}
