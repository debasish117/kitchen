class Api::V1::BaseController < ApiController
  
    before_action :authenticate_request
    # acts_as_token_authentication_handler_for User, fallback: :exception
    attr_reader :current_user

    protected
  
    def authorize_user
      authorize current_user, :regular_user?
    end

    private

    def authenticate_request
        auth_service = AuthorizationService::AuthorizeApiRequest.new(request.headers)
        @current_user = auth_service.call
        render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end

    def user_not_authorized
        head(:unauthorized)
    end
  
  end
  