require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "merowinenotes1789zxcrcfgys#@0!"
    register Sinatra::Flash
  end

  get "/" do
    erb :welcome
  end

  helpers do
    
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def account_exists?
      user = User.find_by(:email => params[:email])
      if user
        flash[:error] = "You already have an account with us. Please Log in."
        redirect '/login'
      end
    end

    def authentication_required
      if !logged_in?
        flash[:error] = "You must be logged in."
        redirect '/login'
      end
    end

    def authorized_to_edit?(wine)
      wine.user == current_user
    end

  end
end

