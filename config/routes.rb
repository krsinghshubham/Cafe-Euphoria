Rails.application.routes.draw do
  get "/", to: "home#index"
  resources :users

  resources :menus
  resources :admins
  resources :orders
  get "/menus_page" => "admins#menusEdit", as: :menusEdit
  post "/final_user_page" => "menus#final", as: :menusFinal
  get "/final_user_page" => "menus#final", as: :menusFinalGet

  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "signout" => "sessions#destroy", as: :destroy_session
end
