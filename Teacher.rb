require_relative './Person.rb'

class Teacher < Person
  def initialize(id, name: "Unknown", age, specialization, parent_permission: true)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services? 
    true
  end
end
