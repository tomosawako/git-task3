Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :users, only: [:new, :index, :edit, :update, :show ]
  resources :books

  get 'home/about' => "homes#about", as: 'about'

end
