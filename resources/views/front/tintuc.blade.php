@extends('front.layouts.app')

@section('content')
<section class="section-1">
    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="false">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <!-- <img src="images/carousel-1.jpg" class="d-block w-100" alt=""> -->

                <video autoplay muted loop playsinline>
                <source media="(max-width: 799px)" src="{{ asset('front-assets/video/xlarge_2-small.mp4') }}" type="video/mp4">
                <source media="(min-width: 800px)" src="{{ asset('front-assets/video/xlarge_2.mp4') }}" type="video/mp4">

                </video>
                <style>
                 .video-container {
    width: 100%; /* Chiều rộng đầy đủ khung cha */
    max-width: 2200px; /* Giới hạn kích thước tối đa của khung video */
    margin: 0 auto; /* Canh giữa khung video */
    overflow: hidden; /* Ngăn phần dư thừa tràn ra ngoài */
    background: black; /* Nền đen để dễ nhìn hơn */
}

.video-container video {
    width: 100%; /* Chiều rộng vừa với khung chứa */
    height: auto; /* Chiều cao tự động điều chỉnh giữ nguyên tỷ lệ */
    object-fit: contain; /* Hiển thị đầy đủ video mà không bị kéo giãn hoặc cắt xén */
    display: block; /* Xóa khoảng trắng không cần thiết */
}


</style>

                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-white mb-3">IPhone</h1>
                        <p class="mx-md-5 px-5"> IPhone không chỉ là thiết bị công nghệ, mà còn là người bạn đồng hành đáng tin cậy, luôn sẵn sàng đáp ứng mọi nhu cầu từ công việc, giải trí đến cuộc sống hàng ngày.</p>
                        <a class="btn btn-outline-light py-2 px-4 mt-3" href="#">ILUX-STORE</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">

               <video autoplay muted loop playsinline>
                <source media="(max-width: 799px)" src="{{ asset('front-assets/video/xlarge_2x-small.mp4') }}" type="video/mp4">
                <source media="(min-width: 800px)" src="{{ asset('front-assets/video/xlarge_2x.mp4') }}" type="video/mp4">

                </video>

                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-white mb-3">MacBook</h1>
                        <p class="mx-md-5 px-5">MacBook không chỉ là công cụ làm việc, mà còn là người bạn đồng hành tuyệt vời, hỗ trợ bạn trong mọi công việc sáng tạo, học tập và giải trí.</p>
                        <a class="btn btn-outline-light py-2 px-4 mt-3" href="#">ILUX-STORE</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>

<section class="section-3">
    <div class="container">
        <div class="section-title text-center mb-4">
            <h2>Sắm đồ online - Gấp đôi ưu đãi</h2>
        </div>
        <style>.section-title {
    margin-top: 30px; /* Điều chỉnh khoảng cách tùy ý */
}
</style>
        <!-- Slider chính -->
        <div class="slider">
            <div class="slider-wrapper">
                <div class="slider-item">
                    <img src="{{ asset('front-assets/images/1.jpg') }}" alt="Slider 1">
                </div>
                <div class="slider-item">
                    <img src="{{ asset('front-assets/images/product-34.jpg') }}" alt="Slider 2">
                </div>
                <div class="slider-item">
                    <img src="{{ asset('front-assets/images/product.webp') }}" alt="Slider 3">
                </div>
                 <div class="slider-item">
                    <img src="{{ asset('front-assets/images/2.webp') }}" alt="Slider 3">
                </div>
            </div>
 <style>/* Slider Container */
.slider {
    position: relative;
    width: 100%;
    overflow: hidden;
    background-color: #f9f9f9; /* Nền nhẹ */
}

/* Slider Wrapper */
.slider-wrapper {
    display: flex;
    transition: transform 0.5s ease-in-out; /* Hiệu ứng chuyển slider */
}

/* Slider Item */
.slider-item {
    flex: 0 0 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}

/* Slider Image */
.slider-item img {
    width: 100%;
    height: 500px;
    object-fit: cover;
    border-radius: 5px;
}
.slider  {
    top: 7px !important;
    width: 100% !important; /* Slider chiếm toàn bộ chiều rộng */
    height: 100% !important; /* Chiều cao cố định cho slider */
    overflow: hidden; /* Ẩn phần vượt ra ngoài khung */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f9f9f9; /* Nền nhẹ */
}

/* Slider Wrapper */
.slider-wrapper {
    display: flex; /* Hiển thị các ảnh nằm ngang */
    transition: transform 0.5s ease-in-out; /* Hiệu ứng chuyển slider */
}

/* Slider Item */
        .slider-item {
            flex: 0 0 100% !important; /* Mỗi item chiếm 100% slider */
            display: flex !important;
            justify-content: center !important; /* Căn giữa ngang */
            align-items: center !important; /* Căn giữa dọc */
            overflow: hidden !important; /* Ẩn nội dung dư thừa */
        }

        /* Slider Image */
        .slider-item img {
            max-width: 200% !important; /* Đảm bảo ảnh không vượt quá chiều rộng khung */
            max-height: 100% !important; /* Đảm bảo ảnh không vượt quá chiều cao khung */
            object-fit: contain !important; /* Giữ nguyên tỷ lệ ảnh, không cắt */
            height:500px  !important; /* Chiều cao tự động theo tỷ lệ */
            width: 3200px  !important; /* Chiều rộng tự động theo tỷ lệ */
            /* border: 1px solid #ddd !important; Viền nhẹ */
            border-radius: 5px !important; Bo góc nhẹ
        }
</style>
<script>
document.addEventListener('DOMContentLoaded', function () {
    const sliderWrapper = document.querySelector('.slider-wrapper');
    const sliderItems = document.querySelectorAll('.slider-item');
    const totalSlides = sliderItems.length;
    let currentIndex = 0;

    function nextSlide() {
        currentIndex = (currentIndex + 1) % totalSlides; // Lặp lại về slide đầu tiên
        updateSlider();
    }

    function updateSlider() {
        const offset = -currentIndex * 100; // Dịch chuyển slider theo index
        sliderWrapper.style.transform = `translateX(${offset}%)`;
    }

    // Tự động chuyển slide mỗi 3 giây
    setInterval(nextSlide, 3000);
});
</script>

         </div>
    </div>
 </section>
<section class="section-3">
    <div class="container">
        <div class="section-title text-center mb-4 ">
            <h2>Danh mục</h2>
        </div>
        <div class="row pb-3">
            @if (getCategories()->isNotEmpty())
            @foreach (getCategories() as $category)
            <div class="col-lg-3">
                <div class="cat-card">
                    <div class="left">
                        @if ($category->image != "")
                        <img src="{{ asset('uploads/category/thumb/'.$category->image) }}" alt="" class="img-fluid">
                        @endif
                        {{-- <img src="{{ asset('front-assets/images/cat-1.jpg') }}" alt="" class="img-fluid"> --}}
                    </div>
                    <div class="right">
                        <div class="cat-data">
                            <h2>{{ $category->name }}</h2>
                            {{-- <p>100 Products</p> --}}
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            @endif

        </div>
    </div>
</section>

<section class="section-4 pt-5">
    <div class="container">
        <div class="section-title text-center mb-4">
            <h2>Sản phẩm nổi bật</h2>
        </div>
        <div class="row pb-3">
            @if ($featuredProducts->isNotEmpty())
                @foreach ($featuredProducts as $product)
                @php
                    $productImage = $product->product_images->first();
                @endphp
                <div class="col-md-3">
                    <div class="card product-card">
                        <div class="product-image position-relative">
                            <a href="{{ route("front.product",$product->slug) }}" class="product-img">

                                @if (!empty($productImage->image))
                                <img class="card-img-top" src="{{ asset('uploads/product/small/'.$productImage->image) }}" />
                                @else
                                <img src="{{ asset('admin-assets/img/default-150x150.png') }}"  />
                                @endif

                            </a>

                            <a onclick="addToWishList({{ $product->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>

                            <div class="product-action">
                                @if($product->track_qty == 'Yes')
                                    @if ($product->qty > 0)
                                    <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart({{ $product->id }});">
                                        <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                                    </a>
                                    @else
                                    <a class="btn btn-dark" href="javascript:void(0);">
                                        Hết hàng
                                    </a>
                                    @endif
                                @else
                                <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart({{ $product->id }});">
                                    <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                                </a>
                                @endif
                            </div>
                        </div>
                        <div class="card-body text-center mt-3">
                            <a class="h6 link" href="{{ route("front.product",$product->slug) }}">{{ $product->title }}</a>
                            <div class="price mt-2">

                                <span class="h5"><strong>{{ number_format($product->price, 0, '.', '.') }}đ</strong></span>
                                @if($product->compare_price > 0)
                                <span class="h6 text-underline"><del>{{ number_format($product->compare_price, 0, '.', '.') }}đ</del></span>
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            @endif


        </div>
    </div>
</section>

<section class="section-4 pt-5">
    <div class="container">
        <div class="section-title text-center mb-4">
            <h2>Sản phẩm mới nhất</h2>
        </div>
        <div class="row pb-3">
            @if ($latestProducts->isNotEmpty())
            @foreach ($latestProducts as $product)
            @php
                $productImage = $product->product_images->first();
            @endphp
            <div class="col-md-3">
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="{{ route("front.product",$product->slug) }}" class="product-img">

                            @if (!empty($productImage->image))
                            <img class="card-img-top" src="{{ asset('uploads/product/small/'.$productImage->image) }}" />
                            @else
                            <img src="{{ asset('admin-assets/img/default-150x150.png') }}"  />
                            @endif

                        </a>
                        <a onclick="addToWishList({{ $product->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>

                        <div class="product-action">
                            @if($product->track_qty == 'Yes')
                                @if ($product->qty > 0)
                                <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart({{ $product->id }});">
                                    <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                                </a>
                                @else
                                <a class="btn btn-dark" href="javascript:void(0);">
                                    Hết hàng
                                </a>
                                @endif
                            @else
                            <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart({{ $product->id }});">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>
                            @endif
                        </div>
                    </div>
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="{{ route("front.product",$product->slug) }}">{{ $product->title }}</a>
                        <div class="price mt-2">

                            <span class="h5"><strong>{{ number_format($product->price, 0, '.', '.') }}đ</strong></span>
                            @if($product->compare_price > 0)
                            <span class="h6 text-underline"><del>{{ number_format($product->compare_price, 0, '.', '.') }}đ</del></span>
                            @endif

                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        @endif
        </div>
    </div>
</section>
@endsection
