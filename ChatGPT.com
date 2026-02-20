<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ChatGPT End-to-End Workflow</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f6f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #10a37f;
        }
        h2 {
            color: #333;
        }
        .section {
            background: #ffffff;
            padding: 15px;
            margin: 15px 0;
            border-left: 6px solid #10a37f;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .flow {
            background: #e8f7f3;
            padding: 15px;
            margin-top: 20px;
            font-weight: bold;
            text-align: center;
        }
        code {
            background: #eee;
            padding: 5px;
            display: block;
            margin-top: 5px;
        }
    </style>
</head>
<body>

    <h1>ChatGPT.com End-to-End Workflow</h1>

    <div class="section">
        <h2>1️⃣ DNS Resolution</h2>
        <p>Browser converts chatgpt.com into an IP address using DNS.</p>
        <code>chatgpt.com → IP Address</code>
    </div>

    <div class="section">
        <h2>2️⃣ TCP & TLS Handshake</h2>
        <p>Secure connection established using HTTPS (Port 443).</p>
        <code>SYN → SYN-ACK → ACK → TLS Encryption</code>
    </div>

    <div class="section">
        <h2>3️⃣ CDN & Edge Network</h2>
        <p>Request goes to nearest edge server for fast delivery.</p>
    </div>

    <div class="section">
        <h2>4️⃣ Load Balancer</h2>
        <p>Traffic is distributed across multiple backend servers.</p>
    </div>

    <div class="section">
        <h2>5️⃣ Frontend Application</h2>
        <p>HTML, CSS, and JavaScript files load ChatGPT interface.</p>
    </div>

    <div class="section">
        <h2>6️⃣ Authentication</h2>
        <p>User login verified and secure session created.</p>
    </div>

    <div class="section">
        <h2>7️⃣ API Request</h2>
        <p>User message is sent to backend API server.</p>
        <code>
POST /api/message<br>
{ "prompt": "Explain traffic flow" }
        </code>
    </div>

    <div class="section">
        <h2>8️⃣ AI Processing</h2>
        <p>Message is processed by AI model running on GPU servers.</p>
        <ul>
            <li>Tokenization</li>
            <li>Context Processing</li>
            <li>Transformer Computation</li>
            <li>Response Generation</li>
        </ul>
    </div>

    <div class="section">
        <h2>9️⃣ Streaming Response</h2>
        <p>Generated response is streamed back and displayed in browser.</p>
    </div>

    <div class="flow">
        User → DNS → CDN → Load Balancer → Web Server → API → AI Model → Response → Browser
    </div>

</body>
</html>
