Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 #website home page
 get "/", to:"pages#home", as:"home"
 get "/about", to:"pages#about", as:"about"
 get "/contact", to:"pages#contact", as:"contact"
 get "/portfolio", to:"pages#portfolio", as:"portfolio"

 #  show a single photo
#get "/photos/:id", to: "photos#show"

#  create a new photo
 #post "/photos", to:"photos#create"

# get a photo form page
 #get "/photos/new", to:"photos#new", as:"new_photo"

#  Update a single photo
#patch "/photos/:id", to: "photos#update"

#  Edit a single photos
#get "/photos/:id/edit", to: "photos#edit"

#  Delete a single photos
#delete "/photos/:id", to: "photos#delete"




root 'posts#index'

##Instead of declaring each and every separate routes for your 7 controller actions (index, show, new, edit, create, update and destroy), a resourceful route declares them in a single lazy line of code.
#GET /posts matches the posts#index action
#GET /posts/new matches the posts#new action
#GET /posts/:id matches the posts#show action
#GET /posts/:id/edit matches the posts#edit action
#POST /posts matches the posts#create action
#PATCH or PUT /posts/:id matches the posts#update action
#DELETE /posts/:id matches the posts#destroy action
get '/posts',             to: 'posts#index'
get '/posts/new',         to: 'posts#new'
get '/posts/:id',         to: 'posts#show'
get '/posts/:id/edit',    to: 'posts#edit'
post '/posts',            to: 'posts#create'
patch '/posts/:id',       to: 'posts#update'
delete '/posts/:id',      to: 'posts#destroy'


resources :posts 




end
      