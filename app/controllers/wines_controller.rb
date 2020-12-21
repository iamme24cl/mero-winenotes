class WinesController < ApplicationController
  # `before` method takes in a `url pattern` for which to apply the following rule
  # require user to login before
  before '/wines*' do
    authentication_required
  end

  # GET: /wines
  get "/wines" do
    @wines = current_user.wines
    erb :"/wines/index.html"
  end

  # GET: /wines/new
  get "/wines/new" do
    erb :"/wines/new.html"
  end

  # POST: /wines
  post "/wines" do
    wine = Wine.new(name: params[:wine][:name], varietal: params[:wine][:varietal], appelation: params[:wine][:appelation], 
    vintage: params[:wine][:vintage], price: params[:wine][:price], image_url: params[:wine][:image_url], tasting_notes: params[:wine][:tasting_notes], 
    user_id: current_user.id)

    if wine.save
      flash[:message] = "Successfully added wine to your collection!"
      redirect "/wines/#{wine.id}"
    else
      flash[:error] = "Failed adding wine: #{wine.errors.full_messages.to_sentence}"
      redirect "/wines/new"
    end
  end

  # READ
  # GET: /wines/5
  get "/wines/:id" do
    @wine = Wine.find_by(:id => params[:id])
    erb :"/wines/show.html"
  end

  # UPDATE - link to edit form 
  # GET: /wines/5/edit
  get "/wines/:id/edit" do
    @wine = Wine.find_by(:id => params[:id])
    if authorized_to_edit?(@wine)
      erb :"/wines/edit.html"
    else
      flash[:error] = "You are not authorized to edit that wine!"
      redirect "/wines"
    end
  end

  # PATCH: /wines/5
  patch "/wines/:id" do
    if logged_in?
      @wine = Wine.find_by(:id => params[:id])
      if authorized_to_edit?(@wine) && @wine.update(name: params[:wine][:name], varietal: params[:wine][:varietal], appelation: params[:wine][:appelation], 
        vintage: params[:wine][:vintage], price: params[:wine][:price], image_url: params[:wine][:image_url], tasting_notes: params[:wine][:tasting_notes])        
        flash[:message] = "Successfully updated Wine!"
        redirect "/wines/#{@wine.id}"
      else
        flash[:error] = "Update failed: #{@wine.errors.full_messages.to_sentence}"
        redirect "/wines/#{@wine.id}/edit"
      end
    else
      redirect "/login"
    end
  end

  # DELETE: /wines/5/delete
  delete "/wines/:id/delete" do
    redirect "/wines"
  end
end
