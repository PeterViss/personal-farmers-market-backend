Rails.application.routes.draw do
  get '/users' => 'users#show'
  post '/users/create' => 'users#create'
  get '/user/farmers' => 'users#farmers'

  get '/states' => 'states#index'

  post '/follows' => 'follows#create'
  delete '/follows' => 'follows#destroy'

  get '/biographies/:id' => 'biographies#show'
  patch '/biographies/:id' => 'biographies#update'
  post '/biographies' => 'biographies#create'

  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show'
  get '/user/posts/:id' => 'users#posts'

  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'
  patch '/posts/:id' => 'posts#update'
  post '/posts' => 'posts#create'
  delete '/posts/:id' => 'posts#destroy'

  get '/comments/:id' => 'comments#show'
  patch '/comments/:id' => 'comments#update'
  post '/comments' => 'comments#create'
  delete '/comments/:id' => 'comments#destroy'

  get '/attends/:id' => 'attendss#show'
  get '/attends' => 'attends#index'
  post '/attends' => 'attends#create'
  delete '/attends/:id' => 'attends#destroy'

  post '/signup' => 'login#create'
  post '/login' => 'login#new'

end
