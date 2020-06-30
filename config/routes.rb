Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 #website home page
 get "/home", to:"pages#home", as:"home"
 get "/about", to:"pages#about", as:"about"
 get "/contact", to:"pages#contact", as:"contact"
 get "/portfolio", to:"pages#portfolio", as:"portfolio"

root 'posts#index'

##Instead of declaring each and every separate routes for your 7 controller actions (index, show, new, edit, create, update and destroy), a resourceful route declares them in a single lazy line of code.
#GET /posts matches the posts#index action
#GET /posts/new matches the posts#new action
#GET /posts/:id matches the posts#show action
#GET /posts/:id/edit matches the posts#edit action
#POST /posts matches the posts#create action
#PATCH or PUT /posts/:id matches the posts#update action
#DELETE /posts/:id matches the posts#destroy action
#get '/posts',             to: 'posts#index'
#get '/posts/new',         to: 'posts#new'
#get '/posts/:id',         to: 'posts#show'
#get '/posts/:id/edit',    to: 'posts#edit'
#post '/posts',            to: 'posts#create'
#patch '/posts/:id',       to: 'posts#update'
#delete '/posts/:id',      to: 'posts#destroy'
    

resources :posts 


   
end
      