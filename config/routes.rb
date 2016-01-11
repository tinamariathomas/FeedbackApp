Rails.application.routes.draw do
  # root 'welcome#index'

  #   get 'products/:id' => 'catalog#view'
  resources :events
end
