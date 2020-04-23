Rails.application.routes.draw do
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blog_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
