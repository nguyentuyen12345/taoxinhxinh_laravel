<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đặt lại mật khẩu Email</title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size:16px;">

    <p>Xin chào, {{ $formData['user']->name }}</p>

    <h1>Bạn đã yêu cầu thay đổi mật khẩu:</h1>

    <p>Vui lòng nhấp vào liên kết bên dưới để đặt lại mật khẩu.</p>

    <a href="{{ route('front.resetPassword',$formData['token']) }}">Nhấp vào đây</a>

    <p>Cảm ơn</p>

</body>
</html>
