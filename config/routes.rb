Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: 'tasks#list'
  get "tasks/new", to: "tasks#new"
  post "tasks/new/create", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit"
  post "tasks/:id/edit/edit_task", to: "tasks#edit_task"
  delete "tasks/:id", to: "tasks#destroy"
end
