Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :matches, only: [:index, :show, :new, :create] do
    resources :participations, only: [:new, :create]
    resources :scores, only: :create
    resources :messages, only: :create
    resources :reviews, only: [:new, :create]
  end

  resources :venues, only: [:index, :show]

  patch "/participations/:id/accepted", to: "participations#accept", as: :participation_accept
  patch "/participations/:id/declined", to: "participations#decline", as: :participation_decline
  patch "/participations/:id/team-one", to: "participations#team_one", as: :participation_team_one
  patch "/participations/:id/team-two", to: "participations#team_two", as: :participation_team_two
  get '/mymatches', to: 'matches#mymatches'


  resources :users, only: [:show, :index]
  resources :reviews, only: [:destroy]
end
