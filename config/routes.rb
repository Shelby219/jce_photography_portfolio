Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 #website home page
 root 'pages#home'
 get "/about", to:"pages#about", as:"about"
 get "/contact", to:"pages#contact", as:"contact"
 get "/portfolio", to:"pages#portfolio", as:"portfolio"

##Instead of declaring tions
#get '/posts',             to: 'posts#index'
#get '/posts/new',         to: 'posts#new'
#get '/posts/:id',         to: 'posts#show'
#get '/posts/:id/edit',    to: 'posts#edit'
#post '/posts',            to: 'posts#create'
#patch '/posts/:id',       to: 'posts#update'
#delete '/posts/:id',      to: 'posts#destroy'
resources :posts 

end
      