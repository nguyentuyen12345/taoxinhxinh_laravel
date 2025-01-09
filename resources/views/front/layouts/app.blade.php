<!DOCTYPE html>
<html class="no-js" lang="en_AU" />
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>ILUX-STORE</title>
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, maximum-scale=1, user-scalable=no" />

	<meta name="HandheldFriendly" content="True" />
	<meta name="pinterest" content="nopin" />

	<meta property="og:locale" content="en_AU" />
	<meta property="og:type" content="website" />
	<meta property="fb:admins" content="" />
	<meta property="fb:app_id" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:title" content="" />
	<meta property="og:description" content="" />
	<meta property="og:url" content="" />
	<meta property="og:image" content="" />
	<meta property="og:image:type" content="image/jpeg" />
	<meta property="og:image:width" content="" />
	<meta property="og:image:height" content="" />
	<meta property="og:image:alt" content="" />

	<meta name="twitter:title" content="" />
	<meta name="twitter:site" content="" />
	<meta name="twitter:description" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:image:alt" content="" />
	<meta name="twitter:card" content="summary_large_image" />


	<link rel="stylesheet" type="text/css" href="{{ asset('front-assets/css/slick.css') }}" />
	<link rel="stylesheet" type="text/css" href="{{ asset('front-assets/css/slick-theme.css') }}" />
	<link rel="stylesheet" type="text/css" href="{{ asset('front-assets/css/ion.rangeSlider.min.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('front-assets/css/style.css') }}" />

	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=sans-serif:wght@200;500&family=Raleway:ital,wght@0,400;0,600;0,800;1,200&family=Roboto+Condensed:wght@400;700&family=Roboto:wght@300;400;700;900&display=swap" rel="stylesheet">

	<!-- Fav Icon -->
	<link rel="shortcut icon" type="image/x-icon" href="#" />

	<meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body data-instant-intensity="mousedown">

<div class="bg-light top-header">
	<div class="container">
		<div class="row align-items-center py-3 d-none d-lg-flex justify-content-between">
			<div class="col-lg-4 logo">
				<a href="{{ route("front.home") }}" class="text-decoration-none">
					<span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">ILUX</span>
					<span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">STORE</span>
				</a>
			</div>
			<div class="col-lg-6 col-6 text-left  d-flex justify-content-end align-items-center">
				@if (Auth::check())
				<a href="{{ route('account.profile') }}" class="nav-link text-dark">Tài khoản của tôi</a>
				@else
				<a href="{{ route('account.login') }}" class="nav-link text-dark">Đăng nhập/Đăng xuất</a>
				@endif
				<form action="{{ route('front.shop') }}" method="get">
					<div class="input-group">
						<input value="{{ Request::get('search') }}" type="text" placeholder="Tìm kiếm sản phẩm" class="form-control" name="search" id="search">
						<button type="submit" class="input-group-text">
							<i class="fa fa-search"></i>
					  	</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<header class="bg-dark">
	<div class="container">
		<nav class="navbar navbar-expand-xl" id="navbar">
			<a href="index.php" class="text-decoration-none mobile-logo">
				<span class="h2 text-uppercase text-primary bg-dark">ILUX</span>
				<span class="h2 text-uppercase text-white px-2">STORE</span>
			</a>
			<button class="navbar-toggler menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<i class="navbar-toggler-icon fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					@if(getCategories()->isNotEmpty())
					@foreach (getCategories() as $category)
					<li class="nav-item dropdown">
						<button class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
							{{ $category->name }}
						</button>
						@if ($category->sub_category->isNotEmpty())
						<ul class="dropdown-menu dropdown-menu-dark">
							@foreach ($category->sub_category as $subCategory)
							<li><a class="dropdown-item nav-link" href="{{ route('front.shop',[$category->slug,$subCategory->slug]) }}">{{ $subCategory->name }}</a></li>
							@endforeach
						</ul>
						@endif
					</li>
					@endforeach
					@endif
				</ul>
			</div>
			<div class="right-nav py-0">
				<a href="{{ route("front.cart") }}" class="ml-3 d-flex pt-2">
					<i class="fas fa-shopping-cart text-primary"></i>
				</a>
			</div>
		</nav>
	</div>
</header>

<style>/* Căn chỉnh các mục navbar và giỏ hàng sử dụng Flexbox */
.navbar {
    display: flex;
    justify-content: space-between; /* Phân phối đều các mục */
    align-items: center; /* Căn chỉnh theo chiều dọc */
    width: 100%; /* Đảm bảo navbar chiếm toàn bộ chiều rộng */
}

.navbar-nav {
    display: flex;
    justify-content: space-between; /* Phân bố đều không gian giữa các mục */
    width: 100%; /* Đảm bảo navbar chiếm toàn bộ chiều rộng */
}

.nav-item {
    margin-right: 120px; /* Khoảng cách giữa các mục trong navbar */
}

/* Đảm bảo khoảng cách giữa giỏ hàng và các mục */
.right-nav {
    margin-right: 10px; /* Khoảng cách giống như các mục trong navbar */
}

/* Tăng cỡ icon giỏ hàng */
.right-nav i.fas.fa-shopping-cart {
    font-size: 24px;
    transition: transform 0.3s ease-in-out;
}

/* Hiệu ứng hover cho giỏ hàng */
.right-nav i.fas.fa-shopping-cart:hover {
    transform: scale(1.2); /* Phóng to khi di chuột */
    color: #ff6600; /* Đổi màu khi hover */
}

</style>
<main>
    @yield('content')
</main>

<footer class="bg-dark mt-5 footer">
    <div class="container pb-5 pt-3">
        <div class="row">
            <div class="col-md-4">
                <h3>Liên hệ</h3>
                <p>
                    <i class="fab fa-facebook-square"></i> ILUX STORE<br>
                    <i class="fab fa-zalo"></i> Zalo: 0528358715<br>
                    <i class="fas fa-phone-alt"></i> : 0528358715<br>
                    <i class="fas fa-home"></i> Khóm 1 Phường 7 TP Trà Vinh <br>
                    <i class="fas fa-envelope"></i> nguyentuyen12122003@gmail.com
                </p>
            </div>

            <div class="col-md-4">
                <div class="footer-card">
                    <h3>Giới thiệu</h3>
                    <ul>
                        @if (staticPages()->isNotEmpty())
                            @foreach (staticPages() as $page)
                            <li><a href="{{ route('front.page',$page->slug) }}" title="{{ $page->name }}">{{ $page->name }}</a></li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card">
                    <h3>Tài khoản của tôi</h3>
                    <ul>
                        <li><a href="#" title="Sell">Đăng nhập</a></li>
                        <li><a href="#" title="Advertise">Đăng ký</a></li>
                        <li><a href="#" title="Contact Us">Đơn hàng của tôi</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

	<div class="copyright-area">
    <div class="container">
        <div class="row">
            <div class="col-12 mt-3">
                <div class="copy-right text-center">
                    <p>ILUX-STORE . Nguyễn Thị Mỹ Tuyền</p>
                </div>
            </div>
        </div>
    </div>
</div>

</footer>

<!-- Wishlist Modal -->
<div class="modal fade" id="wishlistModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Thành công</h5>
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<div class="modal-body">

		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
		</div>
		</div>
	</div>
</div>

<script src="{{ asset('front-assets/js/jquery-3.6.0.min.js') }}"></script>
<script src="{{ asset('front-assets/js/bootstrap.bundle.5.1.3.min.js') }}"></script>
<script src="{{ asset('front-assets/js/instantpages.5.1.0.min.js') }}"></script>
<script src="{{ asset('front-assets/js/lazyload.17.6.0.min.js') }}"></script>
<script src="{{ asset('front-assets/js/slick.min.js') }}"></script>
<script src="{{ asset('front-assets/js/ion.rangeSlider.min.js') }}"></script>
<script src="{{ asset('front-assets/js/custom.js') }}"></script>

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

// $.ajaxSetup({
// 	headers: {
// 		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
// 	}
// });
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

function addToCart(id) {
	$.ajax({
		url: '{{ route("front.addToCart") }}',
		type: 'post',
		data: {id:id},
		dataType: 'json',
		success: function(response) {
			if (response.status == true) {
				window.location.href= "{{ route('front.cart') }}";
			} else {
				alert(response.message);
			}
		}
	});
}

function addToWishList(id) {
	$.ajax({
		url: '{{ route("front.addToWishlist") }}',
		type: 'post',
		data: {id:id},
		dataType: 'json',
		success: function(response) {
			if (response.status == true) {

				$("#wishlistModal .modal-body").html(response.message);
				$("#wishlistModal").modal('show');

			} else {
				window.location.href= "{{ route('account.login') }}";
			}
		}
	});
}
</script>

@yield('customJs')
</body>
</html>
