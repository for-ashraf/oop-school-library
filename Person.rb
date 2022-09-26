# created a base Class Person
class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services
    if is_of_age && @parent_permission
      true
    else
      false
    end
  end

  private

  def is_of_age
    age >= 18
  end
end
