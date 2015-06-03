Rails.application.routes.draw do

	get 'profile/show'

	resources :listings, :profile
	resources :groups
	devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
	resources :users
	root 'static#show'
	get "myprofile" => "profile#profile", :as => :myprofile
	get 'show/:id' => 'user#show'
	#lets user take a job
	resources :listings do
		member do
			 put 'reserve'
		end
	end


end

