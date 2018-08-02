Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  resources :users, except: [:delete, :update]
  resources :scores, only: [:index, :show]
end
