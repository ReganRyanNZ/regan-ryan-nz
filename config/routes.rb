Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'taboo/print' => 'pages#taboo_print'
  get 'taboo' => 'pages#taboo'
  get 'blog/:id' => 'blog#show'
end
