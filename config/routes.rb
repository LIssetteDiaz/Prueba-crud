Rails.application.routes.draw do

  get 'todos', to: 'todos#index'

  get 'todos/new'

  post 'todos', to: 'todos#create'

  get 'todos/:id', to: 'todos#show', as: 'todo'

  get 'complete/:id', to: 'todos#complete', as: 'complete'

  get 'todos/:id/edit', to: 'todos#edit', as: 'todo_edit'

  patch 'todos/:id', to: 'todos#update'

  delete 'todos/:id', to: 'todos#destroy'

  get 'todos_list', to: 'todos#list'

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
