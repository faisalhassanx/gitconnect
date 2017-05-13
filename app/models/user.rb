class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :plan
  
  attr_accessor :stripe_card_token
  # If Pro user passes form validations
  # then set up subscription with Stripe.
  # Stripe responds with customer data
  # Store customer id as customer token and save user
  def save_with_subscription
    if valid?
      customer = Stripe::Customer.create(
        :source => stripe_card_token,
        :email => email,
        :plan => plan_id
      )

      self.stripe_customer_token = customer.id
      save!
    end
  end
end
