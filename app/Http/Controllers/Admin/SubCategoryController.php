<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;


class SubCategoryController extends Controller
{
    public function index(Request $request)
    {
        $subCategories = SubCategory::select('sub_categories.*', 'categories.name as categoryName')
            ->latest('sub_categories.id')
            ->leftJoin('categories', 'categories.id', '=', 'sub_categories.category_id');

        if ($request->filled('keyword')) {
            $subCategories = $subCategories->where('sub_categories.name', 'like', '%' . $request->get('keyword') . '%');
            $subCategories = $subCategories->orwhere('categories.name', 'like', '%' . $request->get('keyword') . '%');
        }

        $subCategories = $subCategories->paginate(10);

        return view('admin.sub_category.list', compact('subCategories'));
    }

    public function create()
    {
        $categories = Category::orderBy('name', 'ASC')->get();
        $data['categories'] = $categories;
        return view('admin.sub_category.create', $data);
    }
    public function store(Request $request)
    {
        // Log::info($request->all());

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:sub_categories',
            'category' => 'required',
            'status' => 'required'
        ]);

        if ($validator->passes()) {
            $subCategory = new SubCategory();
            $subCategory->name = $request->name;
            $subCategory->slug = $request->slug;
            $subCategory->status = $request->status;
            $subCategory->category_id = $request->category; // Sử dụng đúng trường 'category'
            $subCategory->save();

            $request->flash('success', 'Sub category created successfully.');
            return response([
                'status' => true,
                'message' => 'Sub category created successfully.'
            ]);
        } else {
            return response([
                'status' => false,
                'errors' => $validator->errors()


            ]);
        }
    }
    public function edit($id, Request $request)
    {

        $subCategory = SubCategory::find($id);
        if (empty($subCategory)) {
            $request->flash('error', 'Record not found');
            return redirect()->route('sub-categories.index');
        }
        $categories = Category::orderBy('name', 'ASC')->get();
        $data['categories'] = $categories;
        $data['subCategory'] = $subCategory;
        return view('admin.sub_category.edit', $data);
    }
    public function update($id, Request $request)
    {
        $subCategory = SubCategory::find($id);
        if (empty($subCategory)) {
            $request->flash('eror', 'Record not found');
            return response([
                'status' => false,
                'notFound' => true

            ]);
        }
        // if (!$subCategory) {
        //     return redirect()->route('sub-categories.index')->with('error', 'Sub Category not found.');
        // }

        // $request->validate([
        //     'name' => 'required|string|max:255',
        //     'slug' => 'required|string|unique:sub_categories,slug,' . $id,
        //     'status' => 'required|boolean',

        // ]);

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:sub_categories,' . $id,
            'category' => 'required',
            'status' => 'required'
        ]);
        if ($validator->passes()) {
            $subCategory = new SubCategory();
            $subCategory->name = $request->name;
            $subCategory->slug = $request->slug;
            $subCategory->category_id = $request->category;
            $subCategory->save();
        }



        $subCategory->update([
            'name' => $request->name,
            'slug' => $request->slug,
            'status' => $request->status,
            'category_id' => $request->category,
        ]);

        return redirect()->route('sub-categories.index')->with('success', 'Sub Category updated successfully.');
    }


    public function destroy($id, Request $request)
    {

        $subCategory = SubCategory::find($id);
        if (empty($subCategory)) {
            $request->flash('error', 'Record not found');
            return response([
                'status' => false,
                'notFound' => true,
                // 'message' => 'Sub category not found'
            ]);
        }
        $subCategory->delete();
        $request->flash('success', 'Sub category deleted successfully.');
        return response([
            'status' => true,
            'message' => 'Sub category deleted successfully.'
        ]);
    }
}
