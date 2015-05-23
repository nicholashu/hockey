Rails.application.routes.draw do
  get 'profile/show'

devise_for :users
resources :listings, :profile

root 'static#show'
get "myprofile" => "profile#profile", :as => :myprofile
  
#lets user take a job
resources :listings do
	member do
		 put 'reserve'
	end
end


end

