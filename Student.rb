require_relative 'Person'
class Student < Person
    def initialize(classroom, age, name = "Unknown", parent_permission = true)
        @classroom = classroom
        super(age, name = "Unknown", parent_permission = true)  
    end
    
    def play_hooky
        "¯\(ツ)/¯"
    end
end