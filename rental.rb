class Rental
  attr_accessor :date
  attr_reader :books, :person

  def initialize(date, books, person)
    @date = date
    @books = []
    @person = person

    books.each { |book| add_book(book) }
    person.add_rental(self)
  end

  def add_book(book)
    @books << book
    book.add_rental(self)
  end

  def person=(new_person)
    @person = new_person
    new_person.add_rental(self)
  end
end