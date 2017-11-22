class Ship
  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end

  def self.create(params)
    Ship.new(params)
    SHIPS << self
    self
  end

  def self.clear
    SHIPS.clear
  end

  def self.all
    SHIPS
  end

end
