require_relative './Person.rb'

class Student < Person
  def initialize(id, name: "Unknown", age, classroom, parent_permission: true)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
