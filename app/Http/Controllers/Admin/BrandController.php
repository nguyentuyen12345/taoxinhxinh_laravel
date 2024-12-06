<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index(Request $request)
    {
        $brands = Brand::latest('id');

        if ($request->get('keyword')) {
            $brands = $brands->where('name', 'like', '%' . $request->keyword . '%');
        }
        $brands = $brands->paginate(10);

        return view('admin.brands.list', compact('brands'));
    }
    public function create()
    {
        return view('admin.brands.create');
    }
    public function store(Request $request)
    {
        $Validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands',
        ]);

        if ($Validator->passes()) {
            $brand = new Brand();
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();
            return response()->json([
                'status' => true,
                'message' => 'Brand added successfully.'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $Validator->errors()
            ]);
        }
    }
    // public function edit($id, Request $request)
    // {
    //     $brand = brand::find($id);

    //     if (empty($brand)) {
    //         $request->flash('error', 'Record not found.');
    //         return redirect()->route('brands.index');
    //     }
    //     $data['brand'] = $brand;
    //     return view('admin.brands.edit');
    // }
    public function edit($id, Request $request)
    {
        // Lấy thương hiệu theo ID
        $brand = Brand::find($id);

        // Nếu không tìm thấy, chuyển hướng về danh sách
        if (empty($brand)) {
            return redirect()->route('brands.index')->with('error', 'Thương hiệu không tồn tại');
        }

        // Trả về view chỉnh sửa
        return view('admin.brands.edit', compact('brand'));
    }
    public function update($id, Request $request)
    {
        $brand = Brand::find($id);

        // Nếu không tìm thấy, chuyển hướng về danh sách
        if (empty($brand)) {
            $request->flash('error', 'Record not Found.');
            return response()->json([
                'status' => false,
                'notFound' => true
            ]);
            // return redirect()->route('brands.index')->with('error', 'Thương hiệu không tồn tại');
        }

        $Validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands,slug,' . $brand->id . ',id',
        ]);

        if ($Validator->passes()) {
            $brand = new Brand();
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();
            return response()->json([
                'status' => true,
                'message' => 'Brand added successfully.'
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $Validator->errors()
            ]);
        }
    }
}
