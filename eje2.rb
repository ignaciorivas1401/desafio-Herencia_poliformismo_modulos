module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
    
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    include Alimentacion
    include Habilidades
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Pinguino < Ave
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Carnivoro
end

class Pato < Ave
    include Habilidades::Caminante
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Aveja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end