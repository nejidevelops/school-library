require_relative 'base_decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @names.correct_name.capitalize
  end
end
