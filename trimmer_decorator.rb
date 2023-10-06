require_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @names.correct_name.length > 10 ? @names.correct_name[0...10] : @names.correct_name
  end
end