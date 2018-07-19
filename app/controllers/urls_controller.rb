class UrlsController < ApplicationController

	def index
		@url = Url.all
	end

	def new
	end

	def create
		@url = Url.new(long_url: params[:url][:long_url], short_url: SecureRandom.base64[0..8])
		@url.save
		redirect_to new_urls_path
	end

	private
	def url_params
		params.require(:listing).permit(:long_url, :short_url)
	end
end