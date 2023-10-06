class Rental
  attr_accessor :date, :books, :person

  def initialize(date, books, person)
    @date = date
    @books = books
    @person = person
  end

  def books=(new_books)
    @books = new_books
    new_books.rentals.push(self) unless new_books.rentals.include?(self)
  end

  def person=(new_person)
    @person = new_person
    new_person.rentals.push(self) unless new_person.rentals.include?(self)
  end
end
