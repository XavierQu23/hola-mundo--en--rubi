require 'sinatra'
require 'webrick'
get '/' do
  '<html><body><h1>Hola mundo en Ruby</h1></body></html>'
end
set :bind, '0.0.0.0'
set :port, 5050