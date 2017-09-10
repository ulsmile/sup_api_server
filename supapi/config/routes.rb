Rails.application.routes.draw do
  resources :records
  resources :players, param: :player_id
  namespace :api, {format: 'json'} do
    namespace :v1 do
       resources :players
    end
  end
    namespace :api do
      get "/api/players", :to=> "players#index"
    end
end
