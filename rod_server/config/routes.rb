Rails.application.routes.draw do

  scope '/api' do
    devise_for :users, :controllers => { :registrations => "registrations" }
    resources :builders
    post 'search' => 'builders#search'
  end

  devise_scope :user do
    post 'api/users/sign_out_post(.:format)' => 'devise/sessions#destroy'
  end
end
  