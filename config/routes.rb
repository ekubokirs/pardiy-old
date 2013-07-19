Pardiy::Application.routes.draw do

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"
  
  resource :session, only: [:new, :create, :destroy]

  get "login" => "session#new"
  post "login" => "session#create"
  delete "login" => "session#destroy"
  get "login" => "session#destroy"
  
  # You can have the root of your site routed with "root"
  root 'site#index'

end
