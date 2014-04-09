HackerClone::Application.routes.draw do
  match('/', {:via => :get, :to => 'posts#index'})

  resources :posts, except: [:edit, :destroy]
  resources :comments
end
