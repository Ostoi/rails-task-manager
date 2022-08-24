Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "tasks#home"
  # Read all
  get "tasks", to: "tasks#index", as: :tasks
  # Create
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get "tasks/:id", to: "tasks#show", as: :task #################
  ##### = url #####  controller_action  #### ???
  # Update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # Delete
  delete "tasks/:id", to: "tasks#destroy"

  # resources :tasks
end

# As a user, I can list tasks
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task

# Rails.application.routes.draw do
#   # Read all
#   get    "restaurants",          to: "restaurants#index"
#   # Create
#   get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
#   post   "restaurants",          to: "restaurants#create"
#   # Read one - The `show` route needs to be *after* `new` route.
#   get    "restaurants/:id",      to: "restaurants#show", as: :restaurant
#   # Update
#   get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
#   patch  "restaurants/:id",      to: "restaurants#update"
#   # Delete
#   delete "restaurants/:id",      to: "restaurants#destroy"
# end
