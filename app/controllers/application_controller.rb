require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "merowinenotes17890!"
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

    def authentication_required
      if !logged_in?
        flash[:error] = "You must be logged in."
        redirect '/'
      end
    end

    def authorized_to_edit?(wine)
      wine.user == current_user
    end

  end

end
