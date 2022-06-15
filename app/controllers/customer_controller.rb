class CustomerController < ApplicationController
  def index
    url = "http://localhost:3002/customers"
    @response = RestClient.get(url)
    # if @response.body
    #   redirect_to root_path
    # end
  end

  def new
  end

  def edit
  end

  def delete
  end
end
