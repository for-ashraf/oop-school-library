require_relative 'Person'

class Teacher < Person
    def initialize(classroom, age, name = "Unknown", parent_permission = true)
        @specialization = specialization
        super(age, name = "Unknown", parent_permission = true)  
    end
    
    def can_use_services()
      true
    end
end