Rails.application.routes.draw do
  resources :notadepedidos
  resources :registros
  resources :libreta
  resources :posts

  root "static#main"

get '/main' => "static#main"
get '/user' => "static#user"

get "/signup" => "users#new"
post "/signup" => "users#create"

get '/login' => "sessions#new"
post '/login' => "sessions#create"
delete '/logout' => "sessions#destroy"

resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
