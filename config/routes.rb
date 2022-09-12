Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
  #get 'users/show'
  #get 'users/edit'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  
  get 'homes/about', as: 'about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
