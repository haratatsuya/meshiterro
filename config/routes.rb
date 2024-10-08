Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
 root to: "homes#top"
 devise_for :users
 
 resources :post_images, only: [:new, :create, :index, :show, :destroy]
 resources :users, only: [:show, :edit, :update]
 get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
