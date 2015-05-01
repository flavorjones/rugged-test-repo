ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

$stdout.sync = true
$stderr.sync = true

class Dora < Sinatra::Base
  get '/' do
    "Hi, I'm Dora!"
  end

  run! if app_file == $0
end
