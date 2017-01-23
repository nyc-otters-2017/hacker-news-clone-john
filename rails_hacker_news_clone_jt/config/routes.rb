Rails.application.routes.draw do
  root 'posts#index'

  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create', as: 'posts'
  get '/posts/:id' => 'posts#show', as: 'post'
  get '/posts/:id/edit' => 'posts#edit'

  get '/users/new' => 'users#new'
end
