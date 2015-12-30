class SubscribersController < ApplicationController
	
	def new
		@email = Beta_subscribers.new
	end

	def create
		@email = Beta_subscribers.new(email_params)
		if @email.save
			redirect_to "/confirmation"
		else
			render root_path
		end
	end

	
	private
	
	def email_params
		params.require(:beta_subscribers).permit(:email_adress)
	end

end


