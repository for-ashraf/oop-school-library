require './classes/book'
require './classes/person'
require './classes/student'
require './classes/teacher'
require './classes/nameable'
require './classes/classroom'
require './classes/rental'
require './classes/base_decorator'


class App
  attr_reader :books, :people, :rentals, :id

  def create_student(age, name, permission)
    new_person = Student.new(age, name, permission)
    @people.push(new_person)
  end

  def create_teacher(age, name, specialization)
    new_person = Teacher.new(age, name, specialization)
    @people.push(new_person)
  end

  def create_book(title, author)
    new_book = Book.new(title, author)
    @books.push(new_book)
  end

  def create_rental(book, person)
    rental = Rental.new(book, person)
    @rentals.push(rental)
  end

  def list_rentals_for_given_id(id)
    selected_person = @people.select { |person| person.id == id }
    @rentals.each do |rental|
      if rental.person == selected_person[0]
        puts "Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}"
      end
    end
  end

  def exit
    @books_file.write(@books.map(&:create_object))
    @people_file.write(@people.map(&:create_object))
    @rentals_file.write(@rentals.map(&:create_object))
  end
end
