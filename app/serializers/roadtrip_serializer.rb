class RoadtripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :start_city, :end_city, :travel_time
end
