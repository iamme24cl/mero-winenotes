class UsersController < ApplicationController

  # Sign up route that renders register/signup form
  get '/register' do
    erb :'users/new.html'
  end

  # GET: /users
  get "/users" do
    authentication_required
    @users = User.all
    erb :"/users/index.html"
  end

  # CREATE
  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    # check if account already exists using params[:email] to avoid account duplication
    account_exists?

    user = User.new(params)

    # save will trigger activerecord validations
    if user.save
      # log in the user
      session[:user_id] = user.id
      flash[:message] = "Successfully registered account!"
      # redirect to user show page
      redirect "/users/#{user.id}"
    else
      redirect "/users/new.html"
    end
  end

  # render login form
  get '/login' do
    erb :"users/login.html"
  end

  post '/login' do
    # find the user
    user = User.find_by(:email => params[:email])
    # authenticate the user
    if user && user.authenticate(params[:password])
    # log the user in and redirect to user's wines index
      session[:user_id] = user.id
      redirect "/wines"
    else
      flash[:error] = "Invalid Credentials. Please try again!"
      redirect '/login'
    end
  end

  # READ
  # GET: /users/5 
  # Users Show route
  get "/users/:id" do
    # find the user
    @user = User.find_by(:id => params[:id])
    erb :"/users/show.html"
  end

  # UPDATE
  # GET: /users/5/edit
  get "/users/:id/edit" do
    # chexck if user is logged in
    authentication_required
    @user = User.find_by(:id => params[:id])
    if @user == current_user
      erb :"/users/edit.html"
    else
      flash[:error] = "You can only edit your account!"
      redirect "/users"
    end
  end
   

  # PATCH: /users/5
  patch "/users/:id" do
    user = User.find_by(:id => params[:id])
    # update triggers ActiveRecord input validation
    if user.update(:name => params[:name], :email => params[:email])        
      flash[:message] = "Successfully updated profile!"
      redirect "/users/#{user.id}"
    else
      flash[:error] = "Update failed: #{user.errors.full_messages.to_sentence}"
      redirect "/users/#{user.id}/edit"
    end
  end
    

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    authentication_required
    @user = User.find_by(:id => params[:id])
    if @user == current_user
      @user.delete
      flash[:message] = "Successfully deleted account!"
      redirect "/"
    else
      flash[:error] = "You are not authorized to delete this account!"
      redirect "/users/#{@user.id}"
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end
end
