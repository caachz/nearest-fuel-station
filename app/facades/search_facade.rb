class SearchFacade
  attr_reader :station, :directions
  
  def initialize(origin)
    @station = NrelService.new(origin).closest_station

    @directions = DirectionsService.new(origin, @station.address).directions
  end
end
