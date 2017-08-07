class CategoriesController < ApplicationController
  before_action :require_user, except: [:index, :show]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.order('name ASC').paginate(page: params[:page], per_page: 50)
  end

  def show
    @projects = @category.projects.order('complete_date DESC').paginate(page: params[:page], per_page: 12)
  end

  def edit
  end

  def new
    @category = Category.new
  end

  def update
    if @category.update(category_params)
      flash[:success] = "Category has been updated."
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Category has been created."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category.destroy
    flash[:danger] = "Category has been removed."
    redirect_to categories_path
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
