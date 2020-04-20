Rails.application.routes.draw do

  get "/foods", to: "foods#index", as: "foods"
  # We need a page to put the form on to create a new food
  # Remember that this line needs to be above the dynamic route line
  get "/foods/new", to: "foods#new", as: "new_food"
  
  # Show single food
  get "/foods/:id", to: "foods#show", as: "food"
  post "/foods", to: "foods#create"

  
  put "/foods/:id", to: "foods#update"

  delete "/foods/:id", to: "foods#destroy"

end
