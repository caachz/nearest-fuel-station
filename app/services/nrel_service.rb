class NrelService

  def initialize(start_location)
    nrel_conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_API"]}&location=#{start_location}")

    nrel_response = nrel_conn.get
    @nrel_json = JSON.parse(nrel_response.body, symbolize_names: true)
  end

  def closest_station
    Station.new(@nrel_json[:fuel_stations].first)
  end
end
