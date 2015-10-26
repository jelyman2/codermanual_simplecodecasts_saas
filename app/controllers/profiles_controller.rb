class ProfilesController < ApplicationController
  def new
    # form where a user can fill out their own profile.
    @user = User.find(params[:user_id])
    @profile = Profile.new
    @default_user_email = @user.email
  end
  
  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Your profile was updated successfully! :D"
      redirect_to user_path(params[:user_id])
    else
      flash[:danger] = "There was a problem updating your profile. :("
      render action: :new
    end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :location_city, 
      :location_state, :job_title, :job_company, :phone_number, :contact_email, 
      :website, :social_github, :social_twitter, :social_facebook, 
      :social_linkedin, :description)
    end
end