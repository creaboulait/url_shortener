class UrlsController < ApplicationController

	def index
		@url = Url.all
	end

	def create
		byebug
		@url = Url.new(params[:url], short_url: SecureRandom.base64[0..8])
		
		@url.save
		
	end
end