Rails.application.routes.draw do
  root 'home#top'
  devise_for :users
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books,only: [:new, :index, :create, :show, :edit, :update, :destroy] do
  	resources :book_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
end