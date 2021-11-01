Rails.application.routes.draw do
  devise_for :users

  authenticate :user do
    root to: "welcome#index"
  end
end
