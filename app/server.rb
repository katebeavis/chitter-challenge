require 'sinatra/base'
require 'data_mapper'
require './app/models/peep.rb'
require './app/models/user.rb'
require 'rack-flash'
require 'sinatra/partial'

require_relative './controllers/application'
require_relative './controllers/peeps'
require_relative './controllers/users'
require_relative './controllers/sessions'
require './app/helpers/application'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_challenge_#{env}")

DataMapper.finalize

class Chitter < Sinatra::Base
  helpers ApplicationHelpers

  set :public_folder, proc { File.join(root, '..', '..', 'public') }
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions
  set :super_sessions, 'super secret'
  use Rack::Flash
  use Rack::MethodOverride

  # start the server if ruby file executed directly
  run! if app_file == $0
end
