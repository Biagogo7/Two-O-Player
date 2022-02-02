class Players
  attr_accessor :name, :point

  def initialize(name, point)
    @name = name
    @point = point.to_i
  end

end

