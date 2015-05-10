class ProfileController < ApplicationController

 def profile
   @account = current_account
 end
 
end
