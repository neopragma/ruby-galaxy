require 'sinatra'
require 'thin'
require 'json'
require_relative "./handler"
 
get '/' do 
  Handler.new.default.to_json
end