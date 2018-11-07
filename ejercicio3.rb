# Clase vehículo
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# Clase auto
class Car < Vehicle
  attr_accessor :count
  @@count = 0
  def initialize(model, year)
    super
    @@count += 1
  end

  def self.counter
    puts "Contador de instancias: #{@@count}"
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end
Car.new('Mazda', 2016)
Car.new('Hyundai', 1995)
Car.new('Mazda', 2003)
Car.new('Suzuki', 2010)
Car.new('Citroen', 2005)
Car.new('Mercedes', 1980)
Car.new('Renauld', 1978)
Car.new('Suzuki', 2000)
Car.new('Ferrari', 2015)
Car.new('Honda', 1995)
Car.counter
