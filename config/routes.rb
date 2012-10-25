TasksEmber::Application.routes.draw do
  root :to => 'home#index'
  resources :tasks
  resources :sub_tasks
end
