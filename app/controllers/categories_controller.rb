class CategoriesController < ApplicationController

access all: [:show, :index], user: {except: [:destroy, :new, :edit, :update, :create]}, site_admin: :all
  def index
    @categories = Category.all
  end

   def new
   @category = Category.new
   end

    def edit
      @category = Category.find(params[:id])
    end


   def create
     @category = Category.new(category_params)
        if @category.save
         flash[:success] = "Category has been successfully created"
         redirect_to categories_path
        else
         render 'new'
       end
   end

   def update
     @category = Category.find(params[:id])
     if @category.update(category_params)
      flash[:success] = "Category has been successfully updated"
        redirect_to categories_path
      else
       render 'edit'
     end
   end

private

  def category_params
    params.require(:category).permit(:name)
  end
end
