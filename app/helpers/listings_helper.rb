module ListingsHelper

def get_user(user)
  		user = User.find(user)
 
end

def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
end

def is_creator?(listing)
	creator = Listing.find(listing)
	creator = Listing.created_by
		if creator == @current_user
			return true
		else
			return false
		end
end
 
end
