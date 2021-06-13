class Image
  attr_reader :id, :location, :image_url, :credit
  def initialize(data)
    @id = nil
    @location = data[:location]
    @image_url = data[:urls][:full]
    @credit = {
                source: "unsplash.com",
                author: data[:user][:name],
                author_profile: data[:user][:links][:html]
              }
  end
end
