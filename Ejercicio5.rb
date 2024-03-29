#Ejercicio 5: Traductor entero a código Morse
#Se tiene la clase Morseable que contiene un método de instancia generate_hash los datos de traducción de número entero a código morse.
=begin Se pide:
Refactorizar el código del método de instancia generate_hash para que los datos estén
contenidos en un hash donde los números serán las claves y la traducción los valores.
El método generate_hash además debe retornar la traducción del número recibido como
argumento.
=end

class Morseable

  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    hash = {
    0 => '-----',
    1 => '.----',
    2 => '..---',
    3 => '...--',
    4 => '....-',
    5 => '.....',
    6 => '-....',
    7 => '--...',
    8 => '---..',
    9 => '----.'
    }
    hash[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
puts m.to_morse
#--> ...--
