class Author

    attr_accessor :name, :books

    def initiatilize(name:)
        @name = name
        @books = []
    end

    def add_book(book)
        @books << book
        book.author = self
    end
end


class Book

    attr_accessor :title, :author

    def initialize(title:)
        @title = title
        @author = " "
    end
end



author1 = Author.new("Collo")
book1 = Book.new("The Art of War")
author1.add_book(book1)


