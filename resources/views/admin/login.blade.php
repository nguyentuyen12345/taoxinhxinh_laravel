<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel Shop :: Administrative Panel</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('admin-assets/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('admin-assets/css/adminlte.min.css') }}">
    <style>
        body {
            background-image: url('https://source.unsplash.com/1600x900/?store,background');
            background-size: cover;
            background-position: center;
            backdrop-filter: blur(8px);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-box {
            width: 360px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .login-box .btn-primary {
            background-color: #0086e6;
            border: none;
        }

        .login-box .btn-primary:hover {
            background-color: #cc001f;
        }

        .login-box a {
            color: #e60023;
        }

        .input-group-text {
            background-color: #fff;
            border: 1px solid #ced4da;
        }

        .social-btn {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        .social-btn a {
            width: 100%;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            margin-top: 5px;
            color: black; /* Change text color to black for better contrast */
            text-decoration: none;
            font-size: 16px;
            background-color: #fff; /* Set background color to white */
            border: 1px solid #db4437; /* Add border with Google's red color */
        }

        .btn-facebook {
            background-color: #1877f2;
        }

        .btn-google {
            background-color: #fff;
            color: #db4437; /* Google Red */
            border: 1px solid #db4437; /* Border color to match button */
        }

        .btn-google i {
            margin-right: 10px; /* Space between icon and text */
        }
    </style>
</head>
<body>
    <div class="login-box">
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a href="#" class="h3">Trang quản trị</a>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Đăng nhập để bắt đầu</p>
                <form action="{{ route('admin.authenticate') }}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="email" name="email" class="form-control" placeholder="Email">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="password" class="form-control" placeholder="Mật khẩu">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                        </div>
                    </div>
                </form>

                <!-- Nút Đăng Nhập Bằng Facebook -->
                <div class="social-btn">
                    <a href="#" class="btn btn-facebook">
                        <i class="fab fa-facebook-f mr-2"></i> Đăng nhập với Facebook
                    </a>
                </div>

                <!-- Nút Đăng Nhập Bằng Google -->
                <div class="social-btn">
                    <a href="#" class="btn btn-google">
                        <i class="fab fa-google mr-2"></i> Đăng nhập với Google
                    </a>
                </div>

                <p class="mb-1 mt-3 text-center">
                    <a href="#">Quên mật khẩu?</a>
                </p>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="{{ asset('admin-assets/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('admin-assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('admin-assets/js/adminlte.min.js') }}"></script>
</body>
</html>
