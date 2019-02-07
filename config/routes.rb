Rails.application.routes.draw do
  namespace :client do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
  end
end
