class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :check_admin_role, only: [:new, :create, :edit, :update, :destroy]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  def about
  end

  def new 
  end

  def create
  end

  def edit
  end

  def update 
  end 

  def destroy 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :description,:social_links_id)
  end

  def check_admin_role
    unless current_user.admin?
      redirect_to root_path, alert: "No tienes permisos para acceder a esta página."
    end
  end
end