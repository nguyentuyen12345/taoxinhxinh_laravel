@extends('admin.layouts.app')

@section('content')
<section class="content-header">
    <div class="container-fluid my-2">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Chỉnh sửa danh mục</h1>
            </div>
            <div class="col-sm-6 text-right">
                <a href="{{ route('categories.index') }}" class="btn btn-primary">Quay lại</a>
            </div>
        </div>
    </div>
</section>

<section class="content">
    <div class="container-fluid">

        <form action="{{ route('categories.store') }}" method="post" id="categoryForm" name="categoryForm">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="name">Tên</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Name" value="{{ $category->name }}">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="slug">Slug</label>
                                <input type="text" readonly name="slug" id="slug" class="form-control" placeholder="Slug" value="{{ $category->slug }}">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="status">Trạng thái</label>
                                <select name="status" id="status" class="form-control">
                                        <option {{ ($category->status == 1 ) ?'selected': '' }}value="1">Active</option>
                                        <option {{ ($category->status == 0 ) ?'selected': '' }}value="0">Block</option>
                                </select>
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="mb-3">
                                <label for="showHome">Hiển thị trang chủ</label>
                                <select name="showHome" id="showHome" class="form-control">
                                    <option  {{ ($category->showHome == 'Yes' ) ?'selected': '' }} value="1">Có</option>
                                    <option  {{ ($category->showHome == 'No' ) ?'selected': '' }} value="0">Không</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                <div class="mb-3">
                    <input type="hidden" id="image_id" name="image_id" value="1">
                    <label for="image">Hình</label>
                    <div id="image" class="dropzone dz-clickable">
                        <div class="dz-message needsclick">
                            <br>Bấm để tải tệp tin lên.<br><br>
                        </div>
                    </div>
                </div>
            </div>
            @if (!empty($category->image))
            <div>
                <img width="250" src="{{ asset('uploads/category/'.$category->image) }}" alt="">
            </div>
             @endif

                </div>
            </div>

            <form action="{{ route('categories.update', $category->id) }}" method="POST">
             @csrf
            @method('PUT')
            <div class="pb-5 pt-3">
                <button type="submit" class="btn btn-primary" >Cập nhật</button>
                <a href="{{ route('categories.index') }}" class="btn btn-outline-dark ml-3">Hủy</a>
            </div>
            </form>
        </form>
    </div>
</section>
@endsection
<style>
/* CSS cho phần Image */
.dz-message.needsclick {
    border: 2px dashed #007bff;
    border-radius: 8px;
    padding: 20px;
    text-align: center;
    background-color: #f8f9fa;
    font-size: 16px;
    color: #333;
}
.dz-message.needsclick:hover {
    border-color: #0056b3;
    background-color: #e9ecef;
    color: #0056b3;
}
</style>
@section('customJs')
<script>
    $("#categoryForm").submit(function(event) {
        event.preventDefault();
        var element = $(this);
        $("button[type=submit]").prop('disabled',true);
        $.ajax({
                    url: '{{ route("categories.delete",$category->id) }}',
                    type: 'put',
                    data: element.serializeArray(),
                    dataType: 'json',
                    success: function(response) {
                $("button[type=submit]").prop('disabled',false);

                if(response["status"]==true){

                    window.location.href="{{ route('categories.index') }}";
                    $("#name").removeClass('is-invalid')
                            .siblings('p')
                            .removeClass('invalid-feedback').html("");

                     $("#slug").removeClass('is-invalid')
                            .siblings('p')
                            .removeClass('invalid-feedback').html("");

                } else{
                    var errors = response['errors'];
                    if (errors['name']) {
                        $("#name").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['name'][0]); // Hiển thị lỗi thực tế
                    } else {
                        $("#name").removeClass('is-invalid')
                            .siblings('p')
                            .removeClass('invalid-feedback').html("");
                    }

                    if (errors['slug']) {
                        $("#slug").addClass('is-invalid')
                            .siblings('p')
                            .addClass('invalid-feedback').html(errors['slug'][0]); // Hiển thị lỗi thực tế
                    } else {
                        $("#slug").removeClass('is-invalid')
                            .siblings('p')
                            .removeClass('invalid-feedback').html("");
                    }
                    }

            },
            error: function(jqXHR, exception) {
                console.log("Something went wrong");
            }
        });
    });
    $("#name").change(function(){
        element = $(this);
        $("button[type=submit]").prop('disabled',true);
        $.ajax({
            url: '{{ route("getSlug") }}',
            type: 'get',
            data:{title: element.val()} ,
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled',false);
                if(response["status"] ==true){
                    $("#slug").val(response["slug"]);
                }
             }
            });
    });
    Dropzone.autoDiscover = false;
            const dropzone = $("#image").dropzone({
                init: function(){
                    this.on('addedfile', function(file){
                        if (this.files.length > 1){
                            this.removeFile(this.files[0]);
                        }
                    });
                },
                url: "{{ route('temp-images.create') }}",
                maxFiles: 1,
                paramName:'image',
                addRemoveLinks: true,
                acceptedFiles:"image/jpeg,image/png,image/gif",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },success: function(file,response){
                    $("#image_id").val(response.image_id);
                    // console.login(response)
                }
            });

</script>
@endsection
