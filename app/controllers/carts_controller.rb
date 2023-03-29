class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show update destroy ]
  skip_before_action, :authorize, only: [:index, :show]

  # GET /carts
  def index
    @carts = Cart.all
    total = @carts.sum(:price)
    render json: { cartItems: @carts, total: total }, status: :created
  end

  # GET /carts/1
  # def show
  #   render json: @cart
  # end

  # POST /carts
  def create
    # @cart = Cart.new(cart_params)

    # if @cart.save
    #   render json: @cart, status: :created, location: @cart
    # else
    #   render json: @cart.errors, status: :unprocessable_entity
    # end
    carts = Cart.all
    cart = Cart.create!(cart_params)
    total = carts.sum(:price)
    render json: { cartItems: carts, total: total}, status: :created
  end

  # PATCH/PUT /carts/1
  # def update
  #   if @cart.update(cart_params)
  #     render json: @cart
  #   else
  #     render json: @cart.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /carts/:id
  def destroy
    @cart.destroy
    total = Cart.all.sum(:price)
    render json: { cartItems: Cart.all, total: total}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:name, :image, :vendor, :price)
    end

    def render_not_found_response
      render json: { error: "No item found" }, status: :not_found
    end
end
