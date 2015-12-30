class PagesController < ApplicationController

	def landing
		@email = Beta_subscriber.new
	end

	def create
		@email = Beta_subscriber.new(email_params)
		if @email.save
			redirect_to "/confirmation"
		else
			redirect_to root_path
		end
	end

	
	private
	
	def email_params
		params.require(:beta_subscriber).permit(:email_adress)
	end

end
