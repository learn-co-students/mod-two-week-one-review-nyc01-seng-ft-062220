Rails.application.routes.draw do
  
  get '/', to: 'seas#welcome'
  # resources :seas, only: [:index, :show, :edit, :patch]
  get '/seas', to: 'seas#index'
  get '/seas/new', to: 'seas#new'
  post '/seas', to: 'seas#create'
  get '/seas/:id', to: 'seas#show', as: 'sea'
  get '/seas/:id/edit', to: 'seas#edit'
  patch '/seas/:id', to: 'seas#update'
  
end
