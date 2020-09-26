Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :links, only: :create, path: 'urls'
  get 'urls/:short_url', to: 'links#show'
  get 'urls/:short_url/stats', to: 'links#stats'
end