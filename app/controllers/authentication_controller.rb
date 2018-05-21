class AuthenticationController < ApplicationController

  def authenticate
    authenticate_service = AuthenticationService::AuthenticateUser.new(params[:email], params[:password])
    response = authenticate_service.call
    if response
      render json: { auth_token: response }
    else
      render json: { error: authenticate_service.errors[:message] }, status: :unauthorized
    end
  end
end
