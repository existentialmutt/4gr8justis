Rails.application.routes.draw do
  resource :update_harvest_data, only: :create, controller: "update_harvest_data"
  resources :tags, only: [:index, :show, :edit, :update]
  root 'tags#index'
end
