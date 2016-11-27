Rails.application.routes.draw do

  resources :pcategories

  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  get 'welcome/home'
  root 'welcome#home'

  get '*path' => redirect('/')
end
