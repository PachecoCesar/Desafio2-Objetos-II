#Ejercicio 4: Constructor con argumentos
#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}


class Dog

  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.ladrar
