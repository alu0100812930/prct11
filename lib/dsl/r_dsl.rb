#Métodos generales

def author params= {}
   author_name << params.fetch(:name)
author_surname << params.fetch(:surname)
end


def title_ t
   self.title = t
end
 
 
 def publishing_date pdate
    self.p_date = pdate
 end
 
 
 
 def numeration params= {}
     self.edit_num=params.fetch(:edition_number)
     self.volume=params.fetch(:volume)
 end
 
 
 
 def publishing_place pplace
     self.p_place=pplace
 end
 
 
 
 def publishing_house phouse
     self.p_house=phouse
 end