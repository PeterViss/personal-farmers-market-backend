Rails.application.routes.draw do
  get '/users/:id' => 'users#show'
  post '/users/:id' => 'users#create'
  get '/users' => 'users#index'
  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show'
  
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'
  patch '/posts/:id' => 'posts#update'
  post '/posts/:id' => 'posts#create'
  delete '/posts/:id' => 'posts#destroy'

  get '/comments/:id' => 'comments#show'
  patch '/comments/:id' => 'comments#update'
  post '/comments/:id' => 'comments#create'
  delete '/comments/:id' => 'comments#destroy'

  get '/products/:id' => 'products#show'
  get '/products' => 'products#index'
  patch '/products/:id' => 'products#update'
  post '/products/:id' => 'products#create'
  delete '/products/:id' => 'products#destroy'
end
