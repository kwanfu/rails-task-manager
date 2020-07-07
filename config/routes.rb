Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # see many tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # see a form for a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # see one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # submit the new form
  post 'tasks', to: 'tasks#create'

  # see an edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # submit the edit form
  patch 'tasks/:id', to: 'tasks#update'

  # delete the task
  delete 'tasks/:id', to: 'tasks#destroy'
end
