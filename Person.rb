class Person
  def initialize(id, name: "Unknown", age, parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id, :name, :age
  attr_accessor :name, :age

  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(1, name: "John", age: 26)
puts person.name
puts person.age
puts person.can_use_services?