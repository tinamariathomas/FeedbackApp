Rails.application.routes.draw do
  root 'events#index'

  resources :events do
    resources :talks do
      resources :feedbacks
    end
  end

  get 'admin/login' => 'admin#login'
end
