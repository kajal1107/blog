Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :articles do
  		resources :comments
  	end
  root 'welcome#index'
  get '/all_articles', to: 'articles#all_articles'
end