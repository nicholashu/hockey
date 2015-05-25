Rails.application.routes.draw do

	get 'profile/show'

	resources :listings, :profile
	resources :groups
	devise_for :users, class_name: 'FormUser'

	root 'static#show'
	get "myprofile" => "profile#profile", :as => :myprofile
	  
	#lets user take a job
	resources :listings do
		member do
			 put 'reserve'
		end
	end


end

