module ListingsHelper

def get_user(user)
  		user = User.find(user)
 
end

def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
end

def is_creator?(listing, user)
		if listing.created_by == user.id
			return true
		else
			return false
		end
end

def is_admin?(user)
	if user.admin
		return true
	else
		false
	end
end
 
end
