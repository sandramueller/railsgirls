Rails.application.routes.draw do
  resources :likes, only: [:create, :destroy]
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :comments
  get 'pages/info'

  resources :ideas
  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
