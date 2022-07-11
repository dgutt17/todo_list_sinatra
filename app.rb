require_relative 'lib/basic_helpers.rb'
require_relative 'lib/models/todo.rb'
set :database_file, 'config/database.yml'

class BasicApp < Sinatra::Base
  include BasicHelpers
  register Sinatra::ActiveRecordExtension
  get '/' do
    'Hello world!'
  end

  get '/time' do
    get_current_time
  end
end