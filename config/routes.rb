Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'home#index'
  
  resources :articles, only: [:show]
  resources :categories, only: [:show]
  resources :tags, only: [:show]
  resources :pages, only: [:show]

  namespace :admin do
    root 'home#index'
    resources :articles, except: [:show]
    post "articles/:id/hide" => "articles#hide", as: :hide_article
    post "articles/:id/publish" => "articles#publish", as: :publish_article
    resources :categories, except: [:show]
    resources :tags, except: [:show]
    resources :pages, except: [:show]
    resources :courses, except: [:show]
    resources :videos, except: [:show]
  end
end
