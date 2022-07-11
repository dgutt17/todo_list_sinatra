require 'bundler'
Bundler.require

require_relative 'lib/basic_helpers.rb'


class BasicApp < Sinatra::Base
  helpers BasicHelpers
  get '/' do
    'Hello world!'
  end

  get '/time' do
    get_current_time
  end
end