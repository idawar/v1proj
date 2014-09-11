Rails.application.routes.draw do
  resources :songs

  devise_for :admins
  devise_for :users
  resources :singers

#post 'person', to: 'persons#create' 
root to: "singers#index"
end
