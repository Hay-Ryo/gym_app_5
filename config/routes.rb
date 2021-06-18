Rails.application.routes.draw do
  mount ActionCable.server => "/cable"

  devise_for :users
  root "rooms#index"

  resources :rooms, only: [:index,:show]

  resources :messages, only: [:create ,:destroy]
  get "/show_additionally"=> "rooms#show_additionally"

  # totalを上に書く
  get "/attends/total" => "attends#total"
  resources :attends 
  post "/attends/:id/create"=> "attends#create"

  resources :tasks 
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  resources :schedules
  post "/schedules/index" => "schedules#create"
  
end
