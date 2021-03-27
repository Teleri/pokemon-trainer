Rails.application.routes.draw do
  root to: "pages#homepage"
  get 'homepage', to: 'pages#homepage'
  resources :trainers, only: [:show, :new, :create, :edit, :update]
  resources :pokemons, only: [:index, :show, :new, :create, :edit, :update]
end
