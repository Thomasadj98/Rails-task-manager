Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # See all Tasks
  get '/tasks', to: 'tasks#index'

  # Create a Task
  ## display the form
  get '/tasks/new', to: 'tasks#new', as: :new_task
  ## Post new info in the DB
  post '/tasks', to: 'tasks#create'

  # Update a Task
  ## Display the form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :mango
  ## Post information into DB
  patch '/tasks/:id', to: 'tasks#update'

  # See one Task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Delete a Task
  delete '/tasks/:id', to: 'tasks#destroy'

end
