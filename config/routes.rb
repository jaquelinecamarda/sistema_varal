Rails.application.routes.draw do
  get '/home', to: 'welcome#index'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create'
end
