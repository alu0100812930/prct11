# encoding: UTF-8

#Palabras usadas en general

def author params= {}
   author_name << params.fetch(:name)
author_surname << params.fetch(:surname)
end


def title t
   self.title_ = t
end
 
 
 def publishing_date pdate
    self.p_date = pdate
 end
 
 
 
 def numeration params= {}
     self.edit_num=params.fetch(:edition_number)
     self.volume=params.fetch(:volume, nil)
 end
 
 
 
 def publishing_place pplace
     self.p_place=pplace
 end
 
 
 
 def publishing_house phouse
     self.p_house=phouse
 end
 
 #Palabras para libros editados y artículos de periódico
 
 def editor params = {}
       editor_name << params.fetch(:name)
editor_surname << params.fetch(:surname)
 end
 
 def title_article t_a
     self.title_a = t_a
 end
 
 def pages pag
     self.page=pag
 end
 
 #Palabras para documentos electrónicos
 
 def url_ u
     self.url = u
 end
 
 def access_date a_d 
     self.a_date = a_d 
 end
 
 
 def medium_ med
     self.medium = med
 end
 
 #Palabaras para añadir referencias a una lista
 
 def book b 
     raise ArgumentError, 'El objeto no es un libro' unless b.instance_of? Book
     self.insert(b)
 end
 
 def editbook eb
     raise ArgumentError, 'El objeto no es un libro editado' unless eb.instance_of? EBook
     self.insert(eb)
 end
 
 def newspaper n
     raise ArgumentError, 'El objeto no es un articulo de periodico' unless n.instance_of? Newspaper
     self.insert(n)
 end
     
def edocument ed
     raise ArgumentError, 'El objeto no es un documento electrónico' unless ed.instance_of? EDoc
     self.insert(ed)
 end
