module ListingsHelper

	def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
  	end

end
