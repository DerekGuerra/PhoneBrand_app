Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get '/phones' => 'phones#index'
    get '/phones/:id' => 'phones#show'
    post '/phones' => 'phones#create'
    patch '/phones/:id' => 'phones#update'
    delete 'phones/:id' => 'phones#destroy'
  end
end
