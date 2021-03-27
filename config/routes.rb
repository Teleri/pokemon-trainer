Rails.application.routes.draw do
  resources :trainer, only: [:show, :new, :create, :edit, :update]
  resources :pokemon, only: [:index, :show, :new, :create, :edit, :update]
end
