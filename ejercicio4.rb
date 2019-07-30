class Dog
  attr_accessor :propiedades
  def initializer(propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'})
    @propiedades = propiedades

  end
  def ladrar
    "#{initializer[:nombre]} está ladrando!\n"
  end
end

dog = Dog.new
print dog.ladrar
