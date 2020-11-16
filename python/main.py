from http.server import HTTPServer, BaseHTTPRequestHandler

class Redirect(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(301)
        self.send_header('Location', 'http://localhost:1024')
        self.end_headers()

HTTPServer(("0.0.0.0", 80), Redirect).serve_forever()