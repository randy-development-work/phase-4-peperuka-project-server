class CartsController < ApplicationController
  skip_before_action :authorize, only: [:show]
  # skip_before_action :administration, only: [:index]

  # GET /carts
  def index
    user = User.find_by(id: session[:user_id])
    @carts = user.carts.all
    total = @carts.sum(:price)
    @cart_count = @carts.count
    render json: { cartItems: @carts, total: total, count: @cart_count }, include: {
      user: { except: [:password_digest, :created_at, :updated_at]}
  }, except: [:created_at, :updated_at], status: :created
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
    user = User.find_by(id: session[:user_id])
    carts = user.carts.all
    cart = user.carts.create!(cart_params)
    total = carts.sum(:price)
    cart_count = carts.count
    render json: { cartItems: carts, total: total, count: cart_count}, status: :created
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
    # @cart.destroy
    user = User.find_by(id: session[:user_id])
    cart = user.carts.find_by(id: params[:id])
    cart.destroy
    total = user.carts.all.sum(:price)
    cart_count = user.carts.count
    render json: { cartItems: user.carts.all, total: total, count: cart_count}
  end

  # DELETE /carts
  def checkout
    user = User.find_by(id: session[:user_id])
    cart = user.carts
    cart.destroy_all
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:name, :image, :vendor, :price, :user_id)
    end

    def render_not_found_response
      render json: { error: "No item found" }, status: :not_found
    end
end
