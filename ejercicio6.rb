# Modulo promedio
module Test
  def result
    @average = (grade1.to_i + grade2.to_i) / 2
    @average >= 4 ? 'Estudiante aprobado' : 'Estudiante reprobado'
  end
end

# Modulo asistencia
module Attendance
  def student_quantity
    puts "Estudiantes creados: #{quantity}"
  end
end

# Clase estudiante
class Student
  attr_accessor :name, :grade1, :grade2
  include Test
  extend Attendance
  @@quantity = 0
  def initialize(name, grade1 = 4, grade2 = 4)
    @nombre = name
    @nota1 = grade1
    @nota2 = grade2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end
end

a = Student.new('Valentina', 5, 7)
Student.new('Daniel', 0, 2)
Student.new('Ignacio', 4, 4)
Student.new('Laura', 7, 7)
Student.new('Pablo', 3, 4)
Student.new('Rebeca', 1)
puts a.result
puts Student.student_quantity
