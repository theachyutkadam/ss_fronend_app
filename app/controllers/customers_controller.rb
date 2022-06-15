class CustomersController < ApplicationController
  def index
    url = "http://localhost:3002/customers"
    @response = RestClient.get(url)
    # if @response.body
    #   redirect_to root_path
    # end
  end

  def new; end

  def create
    puts "++++++++++++"
    puts "++++++++++++"
    puts "++++++++++++"
    puts "++++++++++++"
    url = "http://localhost:3002/customers/create"
    payload = params
    @response = RestClient.post(url, payload: payload, headers: {})
    p @response.body
    puts "++++++++++++"
    redirect_to customers_path
  end

  def edit
  end

  def delete
  end
end
