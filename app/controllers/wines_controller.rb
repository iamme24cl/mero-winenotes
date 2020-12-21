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

  # GET: /wines/5
  get "/wines/:id" do
    @wine = Wine.find_by(:id => params[:id])
    erb :"/wines/show.html"
  end

  # GET: /wines/5/edit
  get "/wines/:id/edit" do
    erb :"/wines/edit.html"
  end

  # PATCH: /wines/5
  patch "/wines/:id" do
    redirect "/wines/:id"
  end

  # DELETE: /wines/5/delete
  delete "/wines/:id/delete" do
    redirect "/wines"
  end
end
