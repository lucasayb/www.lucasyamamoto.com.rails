Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :articles, only: [:show]
  resources :categories, only: [:show]
  resources :tags, only: [:show]
  resources :pages, only: [:show]

  namespace :admin do
    root 'home#index'
    resources :articles, except: [:show]
    resources :categories, except: [:show]
    resources :tags, except: [:show]
    resources :pages, except: [:show]
  end
end
