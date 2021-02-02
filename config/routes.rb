Rails.application.routes.draw do
  resources :folios
  root 'dashboard#main'
  resources :tickets, except: :new
  get 'clients/:client_id/ticket' => 'tickets#new', as: :service
  
  resources :clients
  get 'dashboard/:client_id/show' => 'dashboard#tickets_view', as: :ver_tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
