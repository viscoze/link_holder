Rails.application.routes.draw do
  devise_for :users

  match '/link-holders',     to: "link_holders#index",   via: :get
  match '/link-holders',     to: "link_holders#create",  via: :post
  match '/link-holders/:id', to: "link_holders#update",  via: :put
  match '/link-holders/:id', to: "link_holders#destroy", via: :delete

  match '/link-holders/:id', to: "link#create",          via: :post
  match '/links/:id',        to: "link#update",          via: :put
  match '/links/:id',        to: "link#destroy",         via: :delete
end
