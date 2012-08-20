class User
  include Mongoid::Document

  field :provider, type: String
  field :uid, type: String
  field :name, type: String

  def create
    user = User.from_omniauth(env["omniauth.auh"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end
