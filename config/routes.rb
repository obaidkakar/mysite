Rails.application.routes.draw do
  resources :payements
  resources :teaches
  resources :instructors
  resources :takes
  resources :courses
  resources :st_has_deps
  resources :departments
  resources :students
  resources :studnts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
