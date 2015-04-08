class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  protect_from_forgery :except => [:open_id]
  def open_id
    # You need to implement the method below in your model
    @user = User.find_for_open_id(env["omniauth.auth"], current_user)
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.open:id_data"] = env["openid.ext1"]
      redirect_to new_user_registration_url
    end
  end
  
  def action_missing(provider)
    # Set up authentication/authorizations here, and distribute tasks
    # that are provider specific to other methods, leaving only tasks
    # that work across all providers in this method. 
  end
  

end