<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>YouTube Traffic Flow</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #ff0000;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .box {
            background: white;
            padding: 15px;
            margin: 15px 0;
            border-left: 5px solid #ff0000;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .flow {
            background: #fff3f3;
            padding: 15px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>

    <h1>How Traffic Flows When You Enter youtube.com</h1>

    <div class="box">
        <h2>1️⃣ Browser Request</h2>
        <p>You type youtube.com in your browser (Chrome, Firefox, Edge).</p>
    </div>

    <div class="box">
        <h2>2️⃣ DNS Resolution</h2>
        <p>The browser asks DNS server to convert youtube.com into an IP address.</p>
    </div>

    <div class="box">
        <h2>3️⃣ TCP Handshake</h2>
        <p>Three-way handshake happens: SYN → SYN-ACK → ACK.</p>
    </div>

    <div class="box">
        <h2>4️⃣ HTTPS Secure Connection</h2>
        <p>SSL/TLS encryption starts using Port 443.</p>
    </div>

    <div class="box">
        <h2>5️⃣ Request to Server</h2>
        <p>Request travels through Router → ISP → Internet → Google Data Center.</p>
    </div>

    <div class="box">
        <h2>6️⃣ Load Balancer</h2>
        <p>Traffic is distributed to the best available server.</p>
    </div>

    <div class="box">
        <h2>7️⃣ Server Response</h2>
        <p>Server sends HTML, CSS, JavaScript, and media files.</p>
    </div>

    <div class="box">
        <h2>8️⃣ CDN Delivery</h2>
        <p>Videos are delivered from nearest CDN server for fast streaming.</p>
    </div>

    <div class="box">
        <h2>9️⃣ Browser Rendering</h2>
        <p>Browser builds DOM, applies CSS, runs JavaScript, and shows homepage.</p>
    </div>

    <div class="flow">
        User → Router → ISP → DNS → Internet → Google Server → CDN → Browser
    </div>

</body>
</html>
