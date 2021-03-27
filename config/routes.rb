Rails.application.routes.draw do
  root to: "pages#homepage"
  get 'homepage', to: 'pages#homepage'
  resources :trainer, only: [:show, :new, :create, :edit, :update]
  resources :pokemon, only: [:index, :show, :new, :create, :edit, :update]
end
