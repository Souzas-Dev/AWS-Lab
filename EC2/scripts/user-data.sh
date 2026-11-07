#!/bin/bash

yum -y install httpd

systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AWS Lab | Amazon EC2</title>

    <style>
        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, Helvetica, sans-serif;
            background: #0f172a;
            color: #f8fafc;
        }

        .card {
            width: 90%;
            max-width: 700px;
            padding: 48px;
            text-align: center;
            background: #1e293b;
            border: 1px solid #334155;
            border-radius: 18px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
        }

        .aws {
            color: #ff9900;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        h1 {
            margin: 18px 0 12px;
            font-size: 38px;
        }

        p {
            color: #cbd5e1;
            line-height: 1.6;
        }

        .status {
            display: inline-block;
            margin-top: 24px;
            padding: 10px 18px;
            border-radius: 999px;
            background: #14532d;
            color: #bbf7d0;
            font-weight: bold;
        }

        footer {
            margin-top: 32px;
            color: #64748b;
            font-size: 13px;
        }
    </style>
</head>

<body>
    <main class="card">
        <div class="aws">Amazon EC2 · AWS Lab</div>

        <h1>Hello From Your Web Server!</h1>

        <p>
            Instância Amazon EC2 provisionada com Amazon Linux 2023
            e Apache HTTP Server por meio de EC2 User Data.
        </p>

        <div class="status">
            Web Server Online
        </div>

        <footer>
            Souzas Dev · Laboratório Amazon EC2
        </footer>
    </main>
</body>
</html>
EOF
