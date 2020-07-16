Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #HTTPVERB 'ROUTE', to: 'controller#method'
    get '/', to: 'seas#welcome' 
    get 'seas', to: 'seas#index'
    
    get 'seas/new', to: 'seas#new'
    post 'seas/', to: 'seas#create' 
    
    get 'seas/:id', to: 'seas#show', as: 'sea'
    get 'seas/:id/edit', to: 'seas#edit'
    patch 'seas/:id', to: 'seas#patch'
end
