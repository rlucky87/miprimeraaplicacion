Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :restaurants, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
  # Defines the root path route ("/")
  namespace :host do
    resources :stars, only: [:new, :create]

    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end

  end

  resource :dashboard, only: :show
end
  # root "articles#index"
