class LeaderboardController < ApplicationController
  def show
  	if current_user
	  	org = current_user.organization
	  	@users = org.users.all.sort{ |x, y| y.score <=> x.score }
  	else
  		redirect_to new_user_registration_path
  	end
  end
end
