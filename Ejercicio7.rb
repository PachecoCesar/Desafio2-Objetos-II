class MyPet

  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 # Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + ' nace '
    puts "Status de #{@name}.
          - El nivel de hambre es de #{@satisfied}
          - Ganas de ir al baño #{@fullIntestine}"
    puts '------------------------------------------'
  end

  def walk
  puts 'Haces caminar a ' + @name + '.'
  @satisfied -= 2
  @fullIntestine = 2
  timeLapse
  puts "Status de #{@name}.
        - El nivel de hambre es de #{@satisfied}
        - Ganas de ir al baño #{@fullIntestine}"
  puts '------------------------------------------'
  end

  def eat
    puts @name + ' esta comiendo.'
    @satisfied += 2
    @fullIntestine += 2
    timeLapse
    puts "Status de #{@name}.
          - El nivel de satisfaccion es de #{@satisfied}
          - Ganas de ir al baño #{@fullIntestine}"
    puts '------------------------------------------'
  end

  def sleep
    puts @name + ' esta durmiendo'
    @sleep = true
    timeLapse
    puts "Status de #{@name}.
          - El nivel de hambre es de #{@satisfied}
          - Ganas de ir al baño #{@fullIntestine}"
    puts '------------------------------------------'
  end

  def timeLapse
    if @satisfied > 0
      # Mueve el alimento del estomago al intestino.
      @satisfied = @satisfied - 1
      @fullIntestine = @fullIntestine + 1
    else # Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
      exit # Sale del programa.
    end
    if @fullIntestine >= 10
      @fullIntestine = 0
      puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end
    if @satisfied == 2
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end
    if @fullIntestine == 8
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
end



puts( '!felicitaciones tu mascota esta lista para nacer¡
por favor ingresa el nombre para tu mascota')
  name = gets.chomp
  @pet = MyPet.new(name)
  puts "Felicidades #{@name} esta listo para comenzar."

choice = 0
while choice != 4
  puts(
    '   ¿Que deseas hacer?
    1)  Alimentar a tu mascota.-
    2)  Pasear a tu mascota.-
    3)  Hacer dormir a tu mascota.-
    4)  Salir del juego.-')

  choice = gets.chomp.to_i

  case choice
  when 1
       @pet.eat
    puts '-----------------------------------------------------'
  when 2
       @pet.walk
    puts '-----------------------------------------------------'
  when 3
       @pet.sleep
    puts '-----------------------------------------------------'
  when 4
    puts '¡Hasta Pronto!'
  else
    puts ' Selecciona un numeros entre 1 y 4'
    puts '-----------------------------------------------------'
  end
end
