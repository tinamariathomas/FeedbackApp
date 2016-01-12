Rails.application.routes.draw do
  root 'events#index'

  #   get 'products/:id' => 'catalog#view'
  resources :events do
    resources :talks
  end
end
