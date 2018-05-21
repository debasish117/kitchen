class AuthenticationService::AuthenticateUser
  attr_accessor  :errors
  
  def initialize(email, password)
    @email = email
    @password = password
    @errors = {}
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)

    errors[:message] = 'invalid credentials'
    nil
  end
end
