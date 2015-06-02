Rails.application.routes.draw do
  root 'instructors#index'
  resources :instructors
  resources :students
end
