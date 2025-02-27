# Servers, WSGI & Flask
- WSGI: Webserver gateway interface
  - a protocol that makes it easy to swap python web application frameworks
- Client downloads html document
  - container page
  - typically in ascii
  - contains instructions for site rendering
  - links to other pages
- can contain embedded objects
  - automatically retrieved
- carriage return and line feed indicate end of headers
- headers may contain private information
  - os used
  - browser used
  - cookie information

### HTTP Request types
- get: retrieve a file (95% of requests)
- head: just get meta-data
- post: submitting a form to a server
- put: store enclosed document as uri
- delete: removed named resource
- trace: http echo for debugging
- connect: used for proxies for tunneling
- options: request for server or proxy options

### HTTP Response types
- 1XX: Informational
  - 100 Continue, 101 Switching protocols
- 2XX: Success
  - 200 OK, 206 Partial Content
- 3XX: Redirection
  - 301 Moved Permanently, 304 Not Modified
- 4XX: Client Error
  - 400 Bad Request, 403 Forbidden, 404 Not Found
- 5XX: Server Error
  - 500 Internal Server Error, 503 Service Unavailable, 505 HTTP Version Not supported
