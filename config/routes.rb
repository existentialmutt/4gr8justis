Rails.application.routes.draw do
  resource :update_harvest_data, only: :create, controller: "update_harvest_data"
  root 'home#show'
end
