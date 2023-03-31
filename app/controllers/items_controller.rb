class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show update destroy ]
  skip_before_action :authorize, only: [:index, :show, :create, :destroy, :update]
  before_action :administration, only: [:create, :update, :destroy]
  

  # GET /items
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/:id
  def show
    render json: set_item
  end

  # POST /items
  def create
    item = Item.create!(item_params)
    render json: item, status: :created
  end

  # PATCH /items/:id
  def update
    item = set_item
    item.update(item_params)
    render json: item, status: :created    
  end

  # DELETE /items/:id
  def destroy
    set_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :image, :vendor, :location, :vendor_contact, :price, :category_id)
    end

    def render_not_found_response
      render json: { error: "Item not found" }, status: :not_found
    end
end
