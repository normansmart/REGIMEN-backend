Rails.application.routes.draw do
  resources :settings
  resources :friends
  resources :comments
  resources :commits
  resources :projects
  resources :assignments
  resources :cohorts
  resources :memberships
  resources :users
  # resources :commits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get "/me" , to: "users#show"
  get "/users" , to: "users#index"
  
  delete "/commits/:id" , to: "commits#destroy"

  post "/login" , to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"

  post "/cohorts" , to: "cohorts#create"
  post "/memberships" , to: "memberships#create"

  post "/assignments" , to: "assignments#create"

  patch "/users" , to: "users#update"
 

  get 'profile' , to: "users#profile"

end
