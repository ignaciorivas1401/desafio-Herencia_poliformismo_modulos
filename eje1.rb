class Person
    attr_accessor :first,:last, :age

    def initialize(first, last, age)
        @first = first
        @last = last
        @age = age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        "Aquí es la clase de programación con Ruby?"
    end
    
    def introduce
        "Hola profesor. Mi nombre es #{self.first} #{self.last}."
    end
end

class Teacher < Person
    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end
    
    def introduce
        "Hola alumnos. Mi nombre es #{self.first} #{self.last}."
    end
end

class Parent < Person
    def talk
        "Aquí es la reunión de apoderados?"
    end
    
    def introduce
        "Hola. Soy uno de los apoderados. Mi nombre es #{self.first} #{self.last}."
    end
end

