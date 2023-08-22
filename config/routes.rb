

Rails.application.routes.draw do
  get 'spa/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api/version1' do
    root'flats#index'
    resources :flats
 
  end
end
