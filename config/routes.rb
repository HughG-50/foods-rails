Rails.application.routes.draw do

  get "/foods", to: "foods#index"
  get "/foods/:id", to: "foods#show"
  
  post "/foods/:id", to: "foods#create"
  put "/foods/:id", to: "foods#update"

  delete "/foods/:id", to: "foods#destroy"

end
