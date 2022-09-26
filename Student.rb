# frozen_string_literal: true

require_relative 'Person'
class Student < Person
  def initialize(classroom, age, _name = 'Unknown', _parent_permission: true)
    @classroom = classroom
    super(age, name = 'Unknown', parent_permission = true)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
