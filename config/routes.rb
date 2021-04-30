Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  resources :boards

  resources :projects do
    resources :tasks
  end
  #namespace :project do
    #resources :tasks
  #end
end
