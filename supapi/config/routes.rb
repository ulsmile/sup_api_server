Rails.application.routes.draw do
  resources :records
  resources :players
  namespace :api, {format: 'json'} do
    namespace :v1 do
       resources :players
    end
  end
end
