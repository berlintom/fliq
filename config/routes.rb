Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :matches, only: [:index, :show] do
    resources :participations, only: [:new, :create]
  end
  patch "/participations/:id/accepted", to: "participations#accept", as: :participation_accept
  patch "/participations/:id/declined", to: "participations#decline", as: :participation_decline
  get '/mymatches', to: 'matches#mymatches'
end
