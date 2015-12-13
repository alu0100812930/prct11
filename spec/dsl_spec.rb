require 'spec_helper'

describe Dsl do
it "Se puede crear con lenguaje natural la bibliografía de un libro" do
    libro = Book.new() do
   author :name => "Dave",
   :surname => "Thomas"
   author :name => "Albert",
   :surname => "Hunt"
   author :name => "Chad",
   :surname => "Fowler"
   title_ "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide"
   publishing_date "2009"
   numeration :edition_number => 4,
   :volume => 1
   publishing_place "Ohio"
   publishing_house "Pragmatic Bookshelf"
end
expect(libro).to be_a Book
expect(libro.to_s).to be == "Thomas, D. & Hunt, A. & Fowler, C. (2009). Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide (4) (1). Ohio: Pragmatic Bookshelf."

end
end
