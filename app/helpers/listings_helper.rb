module ListingsHelper


def group_name(group)
	name = Group.find(group)
	name = name.groupname
end


#returns user
def get_user(user)
  		user = User.find(user)
 
end

#returns name of user
def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
end



#checks is listed post was created by current user
def is_creator?(listing, user)
		if listing.created_by == user.id
			return true
		else
			return false
		end
end

#checks if user is admin
def is_admin?(user)
	if user.admin
		return true
	else
		false
	end
end

#checks of listing is booked
def is_booked?(listing)
	if listing.taken_by != nil
		return true
	else
		return false
	end
end

#checks if the listing is booked by current user
def is_booker?(listing, user)
	if listing.taken_by == user.id
			return true
	else
			return false
	end
end

end
