Rails.application.routes.draw do
  devise_for :users
  resources :posts do 
  	member do 
  		get "like", to: "posts#vote"
  		get "dislike", to: "post#upvote"
  	end
  	resources :comments
  end
  
	root 'posts#index'
end