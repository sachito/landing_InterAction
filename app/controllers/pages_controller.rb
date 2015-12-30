class PagesController < ApplicationController

	def landing
		@email = BetaSubscriber.new
	end

	def create
		@email = BetaSubscriber.new(email_params)
		if @email.save
			redirect_to "/confirmation"
		else
			flash[:info] = "Invalid email adress"
			redirect_to root_path
		end
	end

	
	private
	
	def email_params
		params.require(:beta_subscriber).permit(:email_adress)
	end

end
