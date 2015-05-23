module ListingsHelper

def get_user(user)
  		user = User.find(user)
 
end

def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
end

def user_info(user)
	  	user  = User.find(user)
 end
 
end
