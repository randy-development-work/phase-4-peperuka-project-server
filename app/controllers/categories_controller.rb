class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show update destroy ]
  skip_before_action :authorize, only: [:index, :show, :locate, :update]
  before_action :administration
  skip_before_action :administration, only: [:index, :show, :locate]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/:id
  def show
    category = set_category
    items = Item.where(category_id: category.id)
    render json: items
  end

  # GET /pata/:id
  def locate
    category = Category.find_by(id: params[:id])
    render json: category
  end

  # # POST /categories
  # def create
  #   @category = Category.new(category_params)

  #   if @category.save
  #     render json: @category, status: :created, location: @category
  #   else
  #     render json: @category.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /categories/1
  # def destroy
  #   @category.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:image, :name)
    end

    def render_not_found_response
      render json: { error: "Category not found" }, status: :not_found
    end
end
