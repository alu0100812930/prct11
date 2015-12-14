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
 
 