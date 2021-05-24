Rails.application.routes.draw do
  resources :mivacunas
  resources :developers
  resources :projects
  root "mivacunas#index"

  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :projects
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
