import http.server
import socketserver
import socket

PORT = 8080
Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("0.0.0.0", PORT), Handler) as httpd:
    print(f"服务器已启动！")
    print(f"手机浏览器打开: http://172.20.10.5:{PORT}")
    print(f"按 Ctrl+C 停止服务器")
    httpd.serve_forever()
