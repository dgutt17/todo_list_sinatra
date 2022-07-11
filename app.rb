require 'bundler'
require 'sinatra/activerecord'
Bundler.require

require_relative 'lib/basic_helpers.rb'
set :database_file, 'config/database.yml'

class BasicApp < Sinatra::Base
  include BasicHelpers
  get '/' do
    'Hello world!'
  end

  get '/time' do
    get_current_time
  end
end