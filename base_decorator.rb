require_relative 'nameable'

class BaseDecorator < Nameable
  attr_accessor :names

  def initialize(names)
    @names = names
  end

  def correct_name
    @names.correct_name
  end
end
