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

it "Se puede crear con lenguaje natural la bibliografía de un libro editado" do
      libroeditado = EBook.new() do
   author :name => "Javier",
   :surname => "Castanigno"
   editor :name => "Juan",
   :surname => "Aguad"
   editor :name => "Manuel",
   :surname => "Gutiérrez"
   title_article "Técnicas, materiales y aplicaciones en nanotecnología"
   page "189-191"
   title_ "La Nueva Bioquímica"
   publishing_date "2007"
   numeration :edition_number => 2,
   :volume => 3
   publishing_place "Madrid"
   publishing_house "Espasa"
end
  expect(libroeditado).to be_a EBook  
  expect(libroeditado.to_s).to be == "Castanigno, J. (2007). Técnicas, materiales y aplicaciones en nanotecnología. En J. Aguad & M. Gutiérrez (comps), La Nueva Bioquímica (pp. 189-191) (2) (3). Madrid: Espasa."
end

it "Se puede crear con lenguaje natural la bibliografía de un artículo de periódico" do
     
    diario = Newspaper.new() do
        author :name => "Juan",
        :surname => "Aguad"
        title_article "Más cerca"
        title_ "El Mercurio"
        publishing_date "2008"
        page  "4, Suplemento Deportes"
    end
    expect(diario).to be_a Newspaper
    expect(diario.to_s).to be == "Aguad, J. (2008). Más cerca. El Mercurio, pp. 4, Suplemento Deportes."
end
end
