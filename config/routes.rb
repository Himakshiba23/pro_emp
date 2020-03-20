Rails.application.routes.draw do
  root to: "projects#index"


  devise_for :employees, controllers: {
    sessions: 'employees/sessions'
  }
  resources :employees, :only =>[:show]

  resources :projects

end
