Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/products/new', to: 'products#new'
  get '/products', to: 'products#index' # nome após # é referente a action criada no controller.
  delete '/products/:id', to: 'products#delete'
  post '/products', to: 'products#create'
  get '/products/:id/edit', to: 'products#edit'
end
