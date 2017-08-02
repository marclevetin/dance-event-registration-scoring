Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#index'

  resources :events, only: [:index] do
    resources :contests, only: [:index]
    resources :judges, only: [:index]
    resources :people, only: [:index]
  end

end
