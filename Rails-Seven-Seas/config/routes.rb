Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/seas', to: 'seas#index', as: 'seas'

  get '/seas/new', to: 'seas#new', as: 'seas_new'

  get '/seas/:id', to: 'seas#show', as: 'sea'

  get '/', to: 'seas#welcome'

  get '/seas/:id/edit', to: 'seas#edit', as: 'sea_edit'

  post '/seas', to: 'seas#create', as: 'seas_post'

  patch '/seas/:id', to: 'seas#update'

  delete '/seas/:id', to: 'seas#delete', as: 'sea_delete'

end
