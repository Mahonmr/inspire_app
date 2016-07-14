Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:show]

  devise_scope :user do
    get "/login", to: "devise/sessions#new"
    get "/logout", to: "devise/sessions#destroy"
  end

  root :to => 'home#index'
end
