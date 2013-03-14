class Car
  def initialize(make,model)
    @make, @model = make, model
  end

  def to_s
    "#{make} #{model}"
  end

  attr_accessor :make, :model
end
