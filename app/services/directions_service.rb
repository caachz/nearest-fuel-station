class DirectionsService
  attr_reader :directions

  def initialize(origin, destination)
    conn = Faraday.new(url: "https://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}&key=#{ENV["GOOGLE_DIRECTIONS_API"]}")

    response = conn.get
    json = JSON.parse(response.body, symbolize_names: true)
    @directions = Directions.new(json)
  end
end
