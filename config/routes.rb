Bluecheckpoint::Application.routes.draw do
  namespace :admin do
    resources :news, :only => [:index, :new, :show, :edit, :destroy, :create, :update]
    resources :maps, :only => [:index]
    resources :codes, :only => [:index, :new, :show, :edit, :destroy, :create, :update]
    resources :device_photos, :only => [:index, :new, :destroy, :create]
    root :to => "news#index"
  end

  devise_for :users

  root :to => "welcome#index"
  
  match 'company' => 'static_pages#company', :as => :company_page

  resources :news, :only => :index
  resources :static_pages do
    collection do
      get 'company'
      get 'devices'
      get 'partners'
      get 'help'
      get 'contact'
      get 'news'
      get 'localization'
      get 'cooperation'
      get 'technodiag'
      get 'imedia'
      get 'codes'
      get 'connectors'
      get 'cars'
    end
  end
end
