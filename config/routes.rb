Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :users do
    resources :images
  end

  resources :images

  resources :favorites
end
