class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @arts = @category.arts
  end

  def index
    @categories = Category.all
  end
end
