class UsersInvitationsController < Devise::InvitationsController
	def update
    super
  end

  def edit
    super
  end

  private
  def accept_resource
    resource = resource_class.accept_invitation!(update_resource_params)
    resource
  end

end
