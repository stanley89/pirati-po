class IndexController < ActionController::Base
  def home
    if !user_signed_in?
      redirect_to controller: 'people', action: 'index'
    end
    render :home, layout: 'application'
  end
end
