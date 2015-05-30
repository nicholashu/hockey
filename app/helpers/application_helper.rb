module ApplicationHelper

def gravatar_url(user)
	if user.image?
		gravatar_id = user.image
	else
	    	gravatar_id = Digest::MD5::hexdigest(user.email).downcase
	    	"http://gravatar.com/avatar/#{gravatar_id}.png"
	end
 end

end
