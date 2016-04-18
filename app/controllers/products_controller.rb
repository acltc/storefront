class ProductsController < ApplicationController

def index
  @products = Product.all
  
end

def show
  @product = Product.find_by(id: params[:id])
end

def new
end
def create
  @product = Product.create(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "Taco made!"
  redirect_to "/products/#{@product.id}"
end

def edit
  @product = Product.find_by(id: params[:id])
end

def update
  @product = Product.find_by(id: params[:id])
  @product.update(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "This taco has been updated!"
  redirect_to "/products/#{@product.id}"
end

def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end


end
