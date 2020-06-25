Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 #website home page
 get "/", to:"pages#home", as:"home"
 get "/about", to:"pages#about", as:"about"
 get "/contact", to:"pages#contact", as:"contact"

  #Display all of the photo
 get "/photos", to:"pages#photos", as:"photos"

 #  show a single photo
get "/photos/:id", to: "photos#show"

#  create a new photo
 post "/photos", to:"photos#create"

# get a photo form page
 get "/photos/new", to:"photos#new", as:"new_photo"

#  Update a single photo
patch "/photos/:id", to: "photos#update"

#  Edit a single photos
get "/photos/:id/edit", to: "photos#edit"

#  Delete a single photos
delete "/photos/:id", to: "photos#delete"



end
      