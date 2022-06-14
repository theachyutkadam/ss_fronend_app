class WelcomeController < ApplicationController
  def index
    redirect_to welcome_sign_in_path unless cookies[:is_login]
  end

  def sign_in
    payload = {email: params[:email], password: params[:password]}
    url = "http://localhost:3000/authenticate"
    response = RestClient.post(url, payload, headers={})
    if response.body
      cookies[:is_login] = true
      redirect_to welcome_index_path
    end
    redirect_to welcome_sign_in_path
  end
end
