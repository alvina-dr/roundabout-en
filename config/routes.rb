Rails.application.routes.draw do
  resources :cards
  resources :decks
  root "cards#index"
end
