<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JTH_HACK</title>
    <style>
        /* Genel ayarlar */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Courier New', monospace;
            background: #000;
            color: #00FF00;
            text-align: center;
            padding: 50px;
            overflow: hidden;
        }

        /* Arka plan animasyonu */
        @keyframes backgroundAnimation {
            0% {
                background-color: #000;
            }
            50% {
                background-color: #2E2E2E;
            }
            100% {
                background-color: #000;
            }
        }

        /* Arka plan animasyonunu uygulama */
        body {
            animation: backgroundAnimation 5s infinite;
        }

        /* Buton stili */
        .hack-button {
            background-color: #00FF00;
            color: #000;
            font-size: 1.5rem;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            position: relative;
            z-index: 1;
            transition: all 0.3s ease-in-out;
        }

        .hack-button:hover {
            transform: scale(1.1);
        }

        .hack-button:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 255, 0, 0.2);
            border-radius: 5px;
            z-index: -1;
            transition: all 0.3s ease-in-out;
        }

        .hack-button:hover:before {
            background: rgba(0, 255, 0, 0.6);
        }

        /* Açıklama metni stili */
        .description {
            font-size: 1rem;
            color: #00FF00;
            margin-top: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
        }

        /* Link stili */
        .hack-link {
            color: #00FF00;
            text-decoration: none;
            font-size: 1.2rem;
            display: inline-block;
            margin-top: 20px;
            transition: color 0.3s ease-in-out;
        }

        .hack-link:hover {
            color: #FF0000;
        }
    </style>
</head>
<body>

    <h1>JTH_HACK</h1>
    <a href="home.html" class="hack-button">LOGİN</a>

    <p class="description">
       Bu Site İçinde PC Gerktirmede Hack Vb İşlemler İçindir
    </p>
    
</body>
</html>
