Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'home' => 'home'
  get 'tasks', to: 'tasks#index'

  get 'tasks/:id', to: 'tasks#list', as: :task

end
