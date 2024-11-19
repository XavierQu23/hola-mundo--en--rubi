require 'webrick'

port = ENV['PORT'] || 5050  # Usa el puerto proporcionado por Railway o un predeterminado
server = WEBrick::HTTPServer.new(Port: port.to_i)

server.mount_proc '/' do |req, res|
  res.body = '¡Hola, mundo!'
end

trap 'INT' do
  server.shutdown
end

server.start
