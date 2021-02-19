Rails.application.routes.draw do
  get 'styles/index'
  root to: "styles#index"
end
