ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require_relative 'models/user'

class Chitter < Sinatra::Base

  get '/' do
    "Welcome to Chitter!"
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        password: params[:password],
                        name: params[:name],
                        username: params[:username])
    session[:user_id] = @user.id
    redirect to('/users/new')
  end
end
