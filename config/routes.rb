Rails.application.routes.draw do
  get "/home", to:'welcome#index'
end
