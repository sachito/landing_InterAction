# == Schema Information
#
# Table name: beta_subscribers
#
#  id           :integer          not null, primary key
#  email_adress :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class BetaSubscriber < ActiveRecord::Base

validates_format_of	:email_adress,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

 validates 	:email_adress, presence: {
 	message: "Invalid email adress"
 }

 validates 	:email_adress, uniqueness: {
 	message: "This email adress is already used by one of our users"
 }
 
end
