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
  match 'contact' => 'static_pages#contact', :as => :contact_page
  match 'devices' => 'static_pages#devices', :as => :devices_page
  match 'localization' => 'static_pages#localization', :as => :localization_page
  match 'cooperation' => 'static_pages#cooperation', :as => :cooperation_page

  resources :news, :only => :index
  resources :static_pages do
    collection do
      get 'partners'
      get 'help'
      get 'contact'
      get 'technodiag'
      get 'imedia'
      get 'codes'
      get 'connectors'
      get 'cars'
    end
  end
end
