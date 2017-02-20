Rails.application.routes.draw do

  resources :solicitantes do
    resources :beneficiarios do
      resources :solicitudes
    end
  end
  resources :solicitudes
  resources :ayudas
  resources :departamentos
  devise_for :users
  get 'home/index'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
