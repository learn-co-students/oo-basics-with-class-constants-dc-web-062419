class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand) # instead of having a separate setter method....since the instance is already going to be initialized with the brand and is going to be set to @brand...we can just do it on instantiation. 
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end