# frozen_string_literal: true

require_relative 'Person'
# Class teacher inherits person
class Teacher < Person
  def initialize(_classroom, age, _name = 'Unknown', _parent_permission: true)
    @specialization = specialization
    super(age, name = 'Unknown', parent_permission = true)
  end

  def can_use_services
    true
  end
end
