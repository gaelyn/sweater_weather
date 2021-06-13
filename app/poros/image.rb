class Image
  attr_reader :location, :image_url, :credit
  def initialize(data)
    @location = data[:location]
    @image_url = data[:urls][:full]
    @credit = {
                source: "unsplash.com",
                author: data[:user][:name],
                author_profile: data[:user][:links][:html]
              }
  end
end
