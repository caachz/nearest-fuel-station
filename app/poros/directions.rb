class Directions
  attr_reader :distance, :travel_time, :directions

  def initialize(params)
    @distance = params[:routes][0][:legs][0][:distance][:text]
    @travel_time = params[:routes][0][:legs][0][:duration][:text]
    @directions = params[:routes][0][:legs][0][:steps]
  end
end
