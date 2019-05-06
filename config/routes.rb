Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch "builds/rearrange/:id", to: "builds#rearrange", as: "rearrange_build"

  resources :units, only: [:show, :index]
  resources :builds, only: [:show, :index, :create, :update]
  resources :build_units, only: [:index, :show, :create, :update]
end
