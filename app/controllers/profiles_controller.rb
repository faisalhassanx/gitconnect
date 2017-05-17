class ProfilesController < ApplicationController
  # GET to /users/:user_id/profile/new
  def new
    @profile = Profile.new
  end
  
  # POST to /users/:user_id/profile
  def create
    # Ensure we have a user who is filling out the form
    @user = User.find(params[:user_id])
    # Create profile linked to this specific user
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profile updated"
      redirect_to root_path
    else
      flash[:danger] = "Please try again"
      render action: :new
    end
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :job_title, :company,
                                    :phone_number, :contact_email, :about)
  end
  
end