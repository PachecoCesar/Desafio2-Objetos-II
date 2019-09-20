#1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
#2. Modificar el objeto para que pueda recibir una nota del alumno.
#3. Agregar un getter para la nota.
#4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
#5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.



class Student
attr_accessor :name
attr_reader :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

names = %w(Alicia Javier Camila Francisco Pablo Josefina)

students = []
names.each_with_index do |name, i|
  students.push(Student.new(name, i + 1))
end

grades = students.map do |student|
  puts "#{student.name}: #{student.grade}"
end
