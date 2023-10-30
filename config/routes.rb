Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "about#index"
  get "admin/skills/show", to: 'skills#show'

  devise_for :users,controller: {
    sessions: "users/sessions"
  }

  resources :projects , only: [:index , :show]
  resources :skills , only: [:index , :show]
  resources :technologies , only: [:index , :show]
  resources :about , only: [:index , :show]
  resources :contacts

  devise_scope :user do
    get "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end

  namespace :admin, path: '/admin' do   
    resources :skills
    resources :dashboard
    resources :projects
    resources :about
    resources :users
    resources :technologies
    resources :type_technologies
  end  

end
