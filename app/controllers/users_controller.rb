class RegistrationsController < Devise::RegistrationsController
	before_action :set_organization

def create
	#organization = Organization.find_or_create_by(:name => params[:name])
  @user = User.new(params[:user])
  if current_user.organization.name == "new organization"
    redirect_to new_organization_path
  end
end

private


	def set_organization
		@organization = Organization.find_or_create_by(:name => params[:name])
	end

	
end