class Api::V1::UsersController < Api::V1::BaseController
    respond_to :json
    skip_before_action :authenticate_request, only: [:create]
  
    def create
      user = User.new(user_params)
      if user.save!
        render json: { success: true, email: user.email }
      else
        head(:unauthorized)
      end
    end
  
    protected
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end