class WelcomeController < ApplicationController
  def index
    redirect_to welcome_login_path unless cookies[:is_login]
  end

  def login; end

  def sign_in
    return redirect_to welcome_login_path if params[:email].blank? || params[:password].blank?
    payload = {email: params[:email], password: params[:password]}
    url = "http://localhost:3000/authenticate"
    response = RestClient.post(url, payload, headers={})
    if response.body
      cookies[:is_login] = true
      redirect_to root_path
    end
  end
end
