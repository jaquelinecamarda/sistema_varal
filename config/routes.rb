Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/products/new', to: 'products#new'
  get '/products', to: 'products#index' # nome após # é referente a action criada no controller.
  post '/products', to: 'products#create'
end
