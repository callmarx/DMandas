Rails.application.routes.draw do
  resources :chores
  devise_for :users

  root to: "welcome#index"
  get '/board', to: "board#index"
  authenticate :user do
    get '/test', to: "welcome#test"
  end
end
