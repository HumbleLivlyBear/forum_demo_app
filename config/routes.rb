ForumDemo::Application.routes.draw do
  
  devise_for :users

  resources :boards do
    resources :posts
  end
  
  namespace :admin do
    resources :boards do
      resources :posts
    end
  end

  #match 'boards/:id/posts' => 'boards#show'
  
  root :to => "boards#index"
  
end
