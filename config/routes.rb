Rails.application.routes.draw do
  get 'welcome/login'
  get 'welcome/sign_in'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
