Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :filters, only: [:index, :show]
  get '/search' => 'filters#index'
  match '/search', to: 'filters#index', via: 'post'
  get "coffee/search" => "coffeees#index"
  match 'coffee/search', to: 'coffeees#index', via: 'post'

  resources :coffeees, path: 'cofee' do
    resources :reviews
  end

  resources :brands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
