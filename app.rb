require 'webrick'

server = WEBrick::HTTPServer.new(Port: 5050)

server.mount_proc '/' do |req, res|
  res['Content-Type'] = 'text/html'
  res.body = '<html><body><h1>Hola  mundo en rubi </h1></body></html>'
end

trap('INT') { server.shutdown }

server.start
set :bind, '0.0.0.0'
set :port, 5050