Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  # devise_scope :user do
  #   root "users/sessions#new"
  # end

  devise_for :users
  # root "users/sessions#new"
  root "rooms#index"
  # get "/rooms/:id/show"=> "rooms#show"
  resources :rooms, only: [:index,:show]

  resources :messages, only: [:create ,:destroy, :image_create]
  post "/messages/:id/image" => "messages#image_create"
  get "/show_additionally"=> "rooms#show_additionally"

  get "/attends/total" => "attends#total"
  resources :attends 
  post "/attends/:id/create"=> "attends#create"
  
  # resources :tasks
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  resources :tasks do
    resources :likes, only: [:create, :destroy, :update]
  end
  
  resources :schedules
  post "/schedules/index" => "schedules#create"
  
end
