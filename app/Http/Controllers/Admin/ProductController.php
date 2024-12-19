<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\TempImage;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    public function index(Request $request) // Truyền Request $request vào
    {
        // Debug để kiểm tra dữ liệu từ request
        // dd($request->get('keyword'));

        // Lấy danh sách sản phẩm và nạp mối quan hệ product_images
        $products = Product::latest('id')->with('product_images');

        // Kiểm tra nếu keyword có giá trị thì lọc theo tiêu đề
        if ($request->get('keyword') != "") {
            $products = $products->where('title', 'like', '%' . $request->keyword . '%');
        }

        // Phân trang kết quả
        $products = $products->paginate();

        // Đưa dữ liệu sản phẩm vào mảng $data
        $data['products'] = $products;

        // Trả về view với dữ liệu
        return view('admin.products.list', $data);
    }
    public function create(Request $request)
    {
        $data = [];
        $categories = Category::orderBy('name', 'ASC')->get();
        $data['categories'] = $categories;
        return view('admin.products.create', $data);
    }
    public function store(Request $request)
    {
        $rules = [
            'title' => 'required',
            'slug' => 'required|unique:products,slug',
            'price' => 'required|numeric',
            'sku' => 'required|unique:products,sku',
            'category' => 'required|numeric',
            'is_featured' => 'required|in:Yes,No',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->passes()) {
            $product = $request->id ? Product::findOrFail($request->id) : new Product;
            // Lưu thông tin sản phẩm
            $product->title = $request->title;
            $product->slug = $request->slug;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->compare_price = $request->compare_price;
            $product->sku = $request->sku;
            $product->barcode = $request->barcode;
            $product->status = $request->status;
            $product->category_id = $request->category;
            $product->is_featured = $request->is_featured;

            $product->save();

            if (!empty($request->image_array)) {
                foreach ($request->image_array as $temp_image_id) {
                    $tempImageInfo = TempImage::find($temp_image_id);
                    if (!$tempImageInfo) {
                        return response()->json([
                            'status' => false,
                            'message' => 'Temp image not found with ID: ' . $temp_image_id
                        ]);
                    }

                    $productImage = new ProductImage();
                    $productImage->product_id = $product->id;

                    $extArray = explode('.', $tempImageInfo->name);
                    $ext = last($extArray);
                    $imageName = $product->id . '-' . $productImage->id . '-' . time() . '.' . $ext;

                    $productImage->image = $imageName;
                    $productImage->save();

                    $sourcePath = public_path() . '/temp/' . $tempImageInfo->name;
                    $dPath = public_path() . '/uploads/product/' . $imageName;

                    if (!file_exists(public_path('/uploads/product/'))) {
                        mkdir(public_path('/uploads/product/'), 0755, true);
                    }

                    if (file_exists($sourcePath)) {
                        if (!File::copy($sourcePath, $dPath)) {
                            return response()->json([
                                'status' => false,
                                'message' => 'Error copying image.'
                            ]);
                        }
                    } else {
                        return response()->json([
                            'status' => false,
                            'message' => 'Source image not found.'
                        ]);
                    }
                }
            }

            session()->flash('success', 'Product added or updated successfully');
            return response()->json([
                'status' => true,
                'message' => 'Product added or updated successfully'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function edit($id, Request $request)
    {
        $product = Product::find($id);

        if (!$product) {
            return redirect()->route('products.index')->with('error', 'Product not found');
        }

        //Fetch Product Image
        $productImage = ProductImage::where('product_id', $product->id)->get();

        $categories = Category::orderBy('name', 'ASC')->get();
        $data = [];
        // $brands = Brand::orderBy('name', 'ASC')->get();
        $data['categories'] = $categories;
        // $data['brands'] = $brands;
        $data['product'] = $product;
        $data['productImages'] = $productImage;
        return view('admin.products.edit', $data);

        // return view('admin.products.edit', [
        //     'product' => $product,
        //     'categories' => $categories
        // ]);
    }

    public function update($id, Request $request)
    {
        $product = Product::find($id);

        if (!$product) {
            return response()->json([
                'status' => false,
                'message' => 'Product not found'
            ]);
        }

        $rules = [
            'title' => 'required',
            'slug' => 'required|unique:products,slug,' . $product->id . ',id',
            'price' => 'required|numeric',
            'sku' => 'required|unique:products,sku,' . $product->id . ',id',
            'category' => 'required|numeric',
            'is_featured' => 'required|in:Yes,No',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->passes()) {
            // Cập nhật thông tin sản phẩm
            $product->title = $request->title;
            $product->slug = $request->slug;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->compare_price = $request->compare_price;
            $product->sku = $request->sku;
            $product->barcode = $request->barcode;
            $product->status = $request->status;
            $product->category_id = $request->category;
            $product->is_featured = $request->is_featured;
            $product->save();

            // Thêm thông báo và chuyển hướng về trang danh sách sản phẩm
            session()->flash('success', 'Product updated successfully');
            return redirect()->route('products.index'); // Chuyển hướng về trang sản phẩm
        } else {
            // Trả về lỗi nếu validation không thành công
            return redirect()->back()->withErrors($validator->errors())->withInput(); // Quay lại và hiển thị lỗi
        }
    }
}
