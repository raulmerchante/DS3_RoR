Rails.application.routes.draw do
  resources :developers
  resources :projects
  root "projects#index"

  namespace :api, defaults: { format: 'json' }  do
    namespace :v1 do
      resources :projects
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
