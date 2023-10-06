class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_students(students)
    @students.push(students)
    students.classroom = self
  end
end
