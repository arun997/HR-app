class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      
    end
    

  end
  
  def employee_name 
    first_name + " " + last_name
  end
    
  def authenticate_user!

    if user_signed_in?

      super

    else

      redirect_to login_path, :notice => 'You are not signed in!'

     

    end

  end
end
