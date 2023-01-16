Rails.application.routes.draw do
  get 'demo', to: 'demo_page#demo'
  get 'about', to: 'about_page#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
