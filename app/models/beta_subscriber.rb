class Beta_subscriber < ActiveRecord::Base
	#table : Beta_subscribers
	#field : email_adress (string )

 validates_format_of	:email_adress,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

 validates 	:email_adress, presence: {
 	message: "Invalid email adress"
 }

 validates 	:email_adress, uniqueness: {
 	message: "This email adress is already used by one of our users"
 }

end