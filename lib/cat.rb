require 'pry'

class Cat
    attr_reader :name
    attr_accessor :owner, :mood
     @@cat = []
        def initialize(name, owner)
          @name = name
          @owner = owner
          @mood = "nervous"
          @@cat << self
        end


        def self.all
          @@cat
        end


end