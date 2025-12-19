class BooksController < ApplicationController
   def index
     @books = Book.all
   end
   def show
     id = params.extract_value(:id)
     @book = Book.find(id)
   end
end
