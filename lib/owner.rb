class Owner
  attr_reader :name, :species
  attr_accessor  
   @@all = []

        def initialize(name, species = "human")
        @name = name
        @species = species
        @@all << self
         end

        def say_species        
         return "I am a human."
        end

        def self.all
          @@all
        end

        def self.count
          @@all.size do |owner| 
          end
        end

        def self.reset_all
          @@all.clear
          end
        

          def cats 
            Cat.all.select {|cat| cat.owner == self}                    

          end

          def dogs 
            Dog.all.select {|dog| dog.owner == self}                    
  
          end

          def buy_cat(name)
            new_cat = Cat.new(name, self)
           
          end


          def buy_dog(name)
            new_dog = Dog.new(name, self)
          end

          def walk_dogs            
              self.dogs.each do |dog| dog.mood = "happy"
               end
          end

          def feed_cats
                  self.cats.each do |cat| cat.mood = "happy"
                   end
          end


            def pets          
            self.dogs + self.cats
                           

          end

          def sell_pets       
                self.pets.each do |pet| 
                  pet.mood = "nervous"
                  pet.owner = nil                
                end

          end

          def list_pets
             x_dogs = self.dogs.count
             x_cats = self.cats.count
             return "I have #{x_dogs} dog(s), and #{x_cats} cat(s)."             

          end
end