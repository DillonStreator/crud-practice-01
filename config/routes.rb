Rails.application.routes.draw do
  get "/guitars" => "guitars#index"
  get "/guitars/new" => "guitars#new"
  post "/guitars/create" => "guitars#create"
  get "/guitars/show/:id" => "guitars#show"
  get "/guitars/:id/edit" => "guitars#edit"
  post "/guitars/:id/update" => "guitars#update"
  delete "/guitars/:id/destroy" => "guitars#destroy"
end 
