class UsersController < ApplicationController

  # Sign up route that renders register/signup form
  get '/register' do
    erb :'users/new.html'
  end

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    @user = User.new(params)

    if user.save
      # log in the user
      session[:user_id] = @user.id
      # redirect to user show page
      redirect "/users/#{@user.id}"
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
    @user = User.find_by(:email => params[:email])
    # authenticate the user
    if @user && @user.authenticate(params[:password])
    # log the user in
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      flash[:error] = "Invalid Credentials. Please try again!"
      redirect '/login'
    end
  end

  # GET: /users/5 
  # Users Show route
  get "/users/:id" do
    # find the user
    @user = User.find_by(:id => params[:id])
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
