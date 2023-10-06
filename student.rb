require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(id, age:, classroom:, name: 'Unknown', parent_permission: true)
    super(id, age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def classroom=(classroom)
    @classroom&.students&.delete(self)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
