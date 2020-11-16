require 'socket'
server = TCPServer.new 80

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 301\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "Location: http://localhost:9000\r\n"
  session.print "\r\n" #
  session.print ""

  session.close
end