class Users::RegistrationsController < Devise::RegistrationsController
  
#Run the code below before any other code is run in this controller.
#Only occure when the user goes to the sign up pages.
  before_filter :select_plan, only: :new
  
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
      
      #Function- unless the user comes from a button with 1 or 2 for plan parameter send user back to home page.
                       
  private
  def select_plan
    unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2')
      flash[:notice] = "Please select a membership plan to sign up."
      redirect_to root_url
    end
  end
end