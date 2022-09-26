class Person
    def initialize(age, name = "Unknown", parent_permission = true) 
        @name = name
        @age = age
        @parent_permission=parent_permission
    end
    
    def id ()
        @id
    end

    def name ()
        @name
    end

    def name=(name)
        @name=name
    end

    def age ()
        @age
    end

    def age=(age)
        @age=age
    end

    def can_use_services()
        if is_of_age and @parent_permission
            true
        else
            false
        end
    end

    private
    def is_of_age()
        if age >= 18
            true
        else
            false
       end
            
    end

end
person1 = Person.new(18, "My Name", true) 
p person1.can_use_services