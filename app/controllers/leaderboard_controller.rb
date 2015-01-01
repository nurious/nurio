class LeaderboardController < ApplicationController
  def show
  	org = current_user.organization
  	@users = org.users.all.sort{ |x, y| y.score <=> x.score }
  	# @users = Organization.users.all.sort{ |x, y| y.score <=> x.score }
  end
end
