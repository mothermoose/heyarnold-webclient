Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  get '/' => 'heyarnold#index'
  get '/hey_arnold' => 'heyarnold#index'
  get '/hey_arnold/new' =>'heyarnold#new'
  post '/hey_arnold' => 'heyarnold#create'
  get '/hey_arnold/:id' => 'heyarnold#show'
end
