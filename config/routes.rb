Rails.application.routes.draw do
  match('doctors', {:via => :get, :to => 'doctors#index'})
  match('doctors/new', {:via => :get, :to => 'doctors#new'})
  match('doctors/:id', {:via => :get, :to => 'doctors#show'})
end
