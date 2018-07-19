class UrlsController < ApplicationController

	def index
	end

	def new
	end

	def create
		@url = Url.new(long_url: params[:url][:long_url], short_url: SecureRandom.base64[0..8])

		if @url.save
			redirect_to urls_path
		else
			@errors = "#{@url.errors.full_messages}"
			render :new
		end
	end


	private
	def url_params
		params.require(:listing).permit(:long_url, :short_url)
	end
end