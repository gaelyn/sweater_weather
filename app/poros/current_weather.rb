class CurrentWeather
  # attr_reader :datetime,
  #             :sunrise,
  #             :sunset,
  #             :temp,
  #             :feels_like,
  #             :humidity,
  #             :uvi,
  #             :visibility,
  #             :conditions,
  #             :icon
  def initialize(data)
    @datetime = data[:dt]
    @sunrise = data[:sunrise]
    @sunset = data[:sunset]
    @temp = data[:temp]
    @feels_like = data[:feels_like]
    @humidity = data[:humidity]
    @uvi = data[:uvi]
    @visibility = data[:visibility]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end

  def datetime
    require "pry"; binding.pry
  
    Time.at(@datetime).utc.to_datetime
  end

end
