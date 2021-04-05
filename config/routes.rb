Rails.application.routes.draw do
  get "/", to: "home#index"
  resources :users

  resources :menus
  resources :admins
  get "/cmenus_page" => "admins#menusEdit", as: :menusEdit


  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "signout" => "sessions#destroy", as: :destroy_session
end
