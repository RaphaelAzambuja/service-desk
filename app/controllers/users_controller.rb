class UsersController < ApplicationController
  def index
    users = user_service.find_all_users
    render json: users
  end

  def show
    user = user_service.find_user(params[:id])
    render json: user
  end

  def create
    user = user_service.create_user(user_params)
    render json: user
  end

  def update
    user = user_service.update_user(user_params)
    render json: user
  end

  def inactive
    user_service.inactive_user(params[:id])
    head :no_content
  end
  
  def active
    user_service.active_user(params[:id])
    head :no_content
  end

  
  private def user_service
    @user_service ||= UserService.new(UserRepository.new)
  end
    
  private def user_params
    params.require(:user).permit(:created_by_user_id, :name, :email, :username, :password, :role, :service_level, :deleted_at)
  end
end
