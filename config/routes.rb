Rails.application.routes.draw do
  get 'customer/index'
  get 'customer/new'
  get 'customer/edit'
  get 'customer/delete'
  get 'welcome/login'
  get 'welcome/sign_in'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
