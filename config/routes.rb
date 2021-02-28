Rails.application.routes.draw do
  devise_for :users
  get 'styles/index'
  root to: "styles#index"
  resources :styles, only: [:new, :create, :show] do
  end
end
