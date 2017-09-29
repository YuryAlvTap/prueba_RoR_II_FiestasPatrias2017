Rails.application.routes.draw do
  resources :tasks, only: [:index, :show] do
    resources :lists, only: :create
  end

  resources :lists, only: :index

  root to: 'tasks#index'

  devise_for :users

  post '/task/:tasks_id' => 'lists#desmarcar', as: :list_desmarcar

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
