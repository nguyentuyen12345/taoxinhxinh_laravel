<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Email liên hệ</title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size:16px;">

    <h1>Bạn đã nhận được email liên hệ</h1>

    <p>Tên: {{ $mailData['name'] }}</p>
    <p>Email: {{ $mailData['email'] }}</p>
    <p>Chủ đề: {{ $mailData['subject'] }}</p>

    <p>Tin nhắn:</p>
    <p>{{ $mailData['message'] }}</p>

</body>
</html>
