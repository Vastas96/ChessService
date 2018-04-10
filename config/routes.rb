Rails.application.routes.draw do
  post 'games/file'

  resources :games
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '*unmatched_route' => "application#routing_error"
  post '*unmatched_route' => "application#routing_error"
end
