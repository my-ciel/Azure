#!/bin/bash

# 서버의 호스트 이름을 변수에 저장
HOSTNAME=$(hostname)

# HTML 파일 생성
cat <<EOL > /var/www/html/index.html
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Azure Website</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

        .bg {
            background-image: url('bg.png');
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            font-family: Arial, sans-serif;
        }

        .content {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
        }

        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 200px; /* Adjust the width as needed */
            height: auto;
        }
    </style>
</head>
<body>
    <img src="https://ssh0927.blob.core.windows.net/static/logo.png" alt="Azure Logo" class="logo">
    <div class="bg">
        <div class="content">
            <h3>AZURE, 끝없는 혁신!!!</h3>
            <h1>차세대 솔루션 구축</h1>
            <p>Azure를 통해 바쁜 업무를 처리하고 개발자 혁신을 간소화하는 도구를 이용하세요. 종량제를 사용하거나 Azure를 최대 30일 동안 무료로 체험해 보세요. 사전 약정이 없으며, 언제든지 취소할 수 있습니다.</p>
            <p>환영합니다. 여기는 $HOSTNAME 입니다!</p>
            <a href="https://portal.azure.com/#home" class="btn btn-primary">Azure 시작</a>
        </div>
    </div>
</body>
</html>
EOL

