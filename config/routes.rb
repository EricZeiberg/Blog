Blog::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  resources :posts
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  get '/blog', :to => 'blog#index'
  get 'post/new', :to => 'post#new'
  get '/post/:id', :to => 'post#index'
  post 'post/create', :to => 'post#create'
end
