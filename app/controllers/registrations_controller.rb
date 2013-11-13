class RegistrationsController < Devise::RegistrationsController

  def new
    build_resource({})
    resource.build_picture
    respond_with self.resource
  end

  def edit
    if current_user.picture == nil
      self.resource.build_picture
    else
      self.resource.picture = current_user.picture
    end
    render :edit
  end
end