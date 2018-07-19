class Url < ActiveRecord::Base

  validates :long_url, presence: true, format: { with: /(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9]\.[^\s]{2,})/ } 
  validates :short_url, presence: true

  def create(long_url, short_url)
  	Url.new(long_url: long_url, short_url: short_url)
  	Url.save
  end
  
  def self.retrieve_short_url(long_url)
    if long_url != long_url
      nil
    else 
      # x = Url.find_by(long_url: long_url)
      # return x.short_url
    end
  end

end