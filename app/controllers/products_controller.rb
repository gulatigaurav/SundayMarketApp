 class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user

      if @product.save
        flash[:notice] = 'Product was successfully created.'
        redirect_to @product
      else
          render 'new'
      end
    # end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
      if @product.update(product_params)
        flash[:notice] = 'Product was successfully updated.'
        redirect_to @product
      else
        render 'edit'
      end
    # end
  end

  # DELETE /products/1
  # DELETE /products/1.json

    def destroy
      @product.destroy

        respond_to do |format|
          format.html { redirect_to products_url, notice: 'Article was successfully deleted.' }
          format.json { head :no_content }
          format.js   { render :layout => false }
        end
      end








  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:summary, :description, category_ids: [])
    end
    #
    def require_same_user
      if !logged_in?(:site_admin) and current_user != @product.user
        flash[:notice] = "You can only edit or delete your own articles"
        redirect_to root_path
      end
    end



end
