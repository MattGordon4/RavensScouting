Rails.application.routes.draw do
  resources :s_reports
  devise_for :users
  get 'roster/index'
  get 'schedule/index'
  root 'frontpage#index'
  get 'frontpage/abouttheproject'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
