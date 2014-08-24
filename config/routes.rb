Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'doctors#index'})
  match('doctors', {:via => :get, :to => 'doctors#index'})
  match('doctors', {:via => :post, :to => 'doctors#create'})
  match('doctors/new', {:via => :get, :to => 'doctors#new'})
  match('doctors/:id', {:via => :get, :to => 'doctors#show'})
  match('doctors/:id/edit', {:via => :get, :to => 'doctors#edit'})
  match('doctors/:id', {:via => [:patch, :put], :to => 'doctors#update'})
  match('doctors/:id', {:via => :delete, :to => 'doctors#destroy'})

  match('patients', {:via => :get, :to => 'patients#index'})
  match('patients', {:via => :post, :to => 'patients#create'})
  match('patients/new', {:via => :get, :to => 'patients#new'})
  match('patients/:id', {:via => :get, :to => 'patients#show'})
  match('patients/:id/edit', {:via => :get, :to => 'patients#edit'})
  match('patients/:id', {:via => [:patch, :put], :to => 'patients#update'})
  match('patients/:id', {:via => :delete, :to => 'patients#destroy'})
 
  
  match('appointments', {:via => :get, :to => 'appointments#index'})
  match('appointments', {:via => :post, :to => 'appointments#create'})
  match('appointments/new', {:via => :get, :to => 'appointments#new'})
  match('appointments/:id', {:via => :get, :to => 'appointments#show'})
  match('appointments/:id/edit', {:via => :get, :to => 'appointments#edit'})
  match('appointments/:id', {:via => [:patch, :put], :to => 'appointments#update'})
  match('appointments/:id', {:via => :delete, :to => 'appointments#destroy'})
 
end
