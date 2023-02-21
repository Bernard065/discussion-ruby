class Author

    attr_accessor :name, :books

     def initialize(name)
        @name = name
        @books = []
     end

     def add_book(book)
       book = Book.new(book, self)
       @books << book
       book
     end

     def list_books
        puts "Books by #{@name}:"
        @books.map do |book|
          puts "- #{book.title}"
        end
    end

end


class Book

    attr_accessor :title, :author

    def initialize(title, author)
        @title = title
        @author = author

    end
end


author1 = Author.new("Glen")
author2 = Author.new("Terry")
author3 = Author.new("Dennis")
book1 = author1.add_book("The Art of War")
book2 = author1.add_book("The Last of Us")
book3 = author1.add_book("Ruby Phase 3")
book4 = author2.add_book("Ego is an Enemy")
book5 = author3.add_book("5Am Club")
puts author1.list_books
puts author2.list_books
puts author3.list_books

# puts "#{author1.name} has written #{book1.title}"
# puts "#{author1.name} has written #{book2.title}"
# puts "#{author1.name} has written #{book3.title}"
# puts "#{author2.name} has written #{book4.title}"
# puts "#{author3.name} has written #{book5.title}"


