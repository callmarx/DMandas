Rails.application.routes.draw do
  resources :chores
  devise_for :users

  root to: "welcome#index"
  get '/board', to: "board#index"
  get '/board2', to: "board#other"
  authenticate :user do
    get '/test', to: "welcome#test"
  end
end
