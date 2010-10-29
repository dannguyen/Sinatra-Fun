require 'sinatra'
require 'active_record'
require 'yaml'
require 'data/models.rb'


get '/hi' do
	"Hello world"
end

get '/request/'