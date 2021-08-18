Rails.application.routes.draw do

  resources :noticias
  root 'capa#index'
  post 'interesse' => 'capa#createinteresse'
  post 'update_dashboard' => 'intranet/dashboard#update_index'
  get 'intranet' => 'intranet/sessions#new'
  namespace :intranet do
    resources :kind_of_posts do
      resources :posts
    end
    resources :users
    resources :posts
    resources :categories
    resources :dashboard
    resources :folhetos
    resources :clientes

    controller :sessions do
      get  'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    get 'sessions/create'
    get 'sessions/destroy'

    get 'admin' => 'admin#index'
    get 'logout' => 'sessions#destroy'

  end
  mount Ckeditor::Engine => '/ckeditor'

end
