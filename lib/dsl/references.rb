# encoding: UTF-8

class Biblioref
  include Comparable 
  attr_accessor :author_name #Nombres de autores
      attr_accessor :author_surname #Apellidos de autores
      attr_accessor :title_ #Título de publicación
      attr_accessor :p_house #Casa editorial
      attr_accessor :p_place #Lugar de publicación
      attr_accessor :edit_num #Numero de edición
      attr_accessor :p_date #Fecha de publicación
      attr_accessor :volume #Volumen
      def initialize(params = {})
          self.author_name = []
          self.author_surname = []
      
          end
          
      def to_s
          fullnames = ""
          i=0
  while i < self.author_name.count
if i != self.author_name.count-1
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}. & "
else
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}."
end
  i=i+1
end
      "#{fullnames} (#{self.p_date}). #{self.title_} (#{self.edit_num}) (#{self.volume}). #{self.p_place}: #{self.p_house}."
    end 
    
     def <=> (another)
       if (self.author_surname != another.author_surname)
      self.author_surname<=>another.author_surname
  elsif (self.author_surname == another.author_surname && self.p_date!=another.p_date)
    self.author_surname<=>another.author_surname
    self.p_date<=>another.p_date
  end
    end
end

class Book < Biblioref
    def initialize(params ={}, &block)
        super
        instance_eval &block
    end
    def to_s
        super
end

def <=>(another)
  if self.author_surname== another.author_surname && self.p_date==another.p_date
    self.title_<=>another.title_
  else
      super
    end
end
end

class EBook < Biblioref
    attr_accessor :title_a, #Título de artículo
    :editor_name, #Nombres de editores de artículo
    :editor_surname, #Apellidos de editores de artículo
    :page #Paginas de artículo
    def initialize(params = {}, &block)
        super
        self.editor_name = []
        self.editor_surname = []
        instance_eval &block
    end
    
    def to_s
          editors = ""
 fullnames = ""
          i=0
  while i < self.author_name.count
if i != self.author_name.count-1
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}. & "
else
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}."
end
  i=i+1
end
i=0
   while i < self.editor_name.count
if i == self.editor_name.count-1
  editors= editors + "#{self.editor_name[i][0]}. #{self.editor_surname[i]}"
elsif i == self.editor_name.count-2
  editors= editors + "#{self.editor_name[i][0]}. #{self.editor_surname[i]} & "
 else
 editors= editors + "#{self.editor_name[i][0]}. #{self.editor_surname[i]}, "
end
  i=i+1
end
      "#{fullnames} (#{self.p_date}). #{self.title_a}. En #{editors} (comps), #{self.title_} (pp. #{self.page}) (#{self.edit_num}) (#{self.volume}). #{self.p_place}: #{self.p_house}."
    end 
    
   def <=>(another)
        if self.author_surname== another.author_surname && self.p_date==another.p_date
    self.author_surname<=>another.author_surname
    self.title_a<=>another.title_a
else
  super
end
end
end

class Newspaper < Biblioref
  attr_accessor :title_a, #Título de artículo
  :page #Paginación
  def initialize(params = {}, &block)
    super
    instance_eval &block
  end
  
        def to_s
  fullnames = ""
          i=0
  while i < self.author_name.count
if i != self.author_name.count-1
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}. & "
else
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}."
end
  i=i+1
end
      "#{fullnames} (#{self.p_date}). #{self.title_a}. #{self.title_}, pp. #{self.page}."
   end
     def <=>(another)
        if self.author_surname == another.author_surname && self.p_date==another.p_date
          self.author_surname<=>another.author_surname
    self.title_a<=>another.title_a
else
  super
end
end
end

class EDoc < Biblioref
   attr_accessor :url, #Dirección de documento electrónico
   :medium, #Medio
   :a_date #Fecha de acceso a medio
    def initialize(params ={}, &block)
        super
        instance_eval &block
    end
    
      def to_s
         fullnames = ""
          i=0
  while i < self.author_name.count
if i != self.author_name.count-1
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}. & "
else
  fullnames= fullnames + "#{self.author_surname[i]}, #{self.author_name[i][0]}."
end
  i=i+1
end
 if self.medium =="En línea"
      "#{fullnames} (#{self.p_date}). #{self.title_} (#{self.edit_num}), [#{self.medium}]. #{self.p_place}: #{self.p_house}. Disponible en: #{self.url} [#{self.a_date}]."
 else
     "#{fullnames} (#{self.p_date}). #{self.title_} (#{self.edit_num}), [#{self.medium}]. #{self.p_place}: #{self.p_house} [#{self.a_date}]."
 end
end

def <=>(another)
  if self.author_surname == another.author_surname && self.p_date==another.p_date
    self.author_surname<=>another.author_surname
    self.title_<=>another.title_
  else
      super
    end
end

end