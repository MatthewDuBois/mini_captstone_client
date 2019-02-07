class Client::ProductsController < ApplicationController
  def index
    response = HTTP.get("http://localhost:3000/api/products")
    @recipes = response.parse
    render 'index.html.erb'
  end

  def show
    response = HTTP.get("http://localhost:3000/api/products/#{params[:id]}")
    @recipe = response.parse
    render 'show.html.erb'
  end

end
