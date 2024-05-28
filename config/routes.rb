Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root "welcome#index"
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  get 'portfolio', to: 'welcome#portfolio'
  get 'service', to: 'welcome#service'
  post '/contact', to: 'contacts#create'
end
