#Ejercicio 1: Sintaxis
=begin Copia el siguiente código y ejecútalo. Luego corrige los errores para poder ejecutar ambos
métodos y finalmente obtener el valor de la variable de a.
=end

class Anything
  attr_reader :a

  def initialize
    @a = 0
  end

  def foo
    a = 5
  end

  def bar
    @a += 1
  end

end

  any = Anything.new
  puts any.foo
  puts any.bar
  puts any.a
