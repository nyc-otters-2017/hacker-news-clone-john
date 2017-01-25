Rails.application.routes.draw do
  root 'posts#index'

  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create', as: 'posts'
  get '/posts/:id' => 'posts#show', as: 'post'
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch '/posts/:id' => 'posts#update'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create', as: 'users'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/comments/new' => 'comments#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'logins'
  delete '/logout' => 'sessions#destroy'
end
