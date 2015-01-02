class SplashController < ApplicationController
  def index
    if current_user
      redirect_to organization_path(current_user.organization)
    end
  end
end
