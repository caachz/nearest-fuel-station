class Station
  attr_reader :name, :fuel_type, :access_times

  def initialize(params)
    @name = params[:station_name]
    @fuel_type = params[:fuel_type_code]
    @access_times = params[:access_days_time]
    @street_address = params[:street_address]
    @city = params[:city]
    @state = params[:state]
    @zip = params[:zip]
    @country = params[:country]
  end

  def address
    @street_address + " " +
    @city + " " +
    @state + " " +
    @zip + " " +
    @country
  end
end
