class AdminsController < ApplicationController
  # before_action :set_admin, only: %i[ show update destroy ]
  before_action :administration
  skip_before_action :authorize, only: [:show, :create]

  # GET /admins
  # def index
  #   @admins = Admin.all

  #   render json: @admins
  # end

  # GET /ad
  def show
    admin = Admin.find(session[:admin_id])
    render json: admin, status: :created
  end

  # POST /newadmin
  def create
    admin = Admin.create!(admin_params)
    # session[:admin_id] = admin.id
    render json: admin, status: :created
  end

  # PATCH/PUT /admins/1
  # def update
  #   if @admin.update(admin_params)
  #     render json: @admin
  #   else
  #     render json: @admin.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /admins/1
  # def destroy
  #   @admin.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params.permit(:admin_name, :password, :password_confirmation)
    end
end
