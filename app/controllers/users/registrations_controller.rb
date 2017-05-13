class Users::RegistrationsController < Devise::RegistrationsController
  # Extend default devise gem behavior so that
  # users signing up from Pro account(plan id=2)
  # save with a special Stripe subscription function
  # Else devise signs up with basic form
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_subscription
        else
          resource.save
        end
      end
    end
  end
end