Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#index'
  namespace :v1, defaults: { format: 'json' } do
    get 'home', to: 'home#index'
  end
end
