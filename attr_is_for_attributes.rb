
class Player
    attr_reader :name, :health
    attr_accessor :name, :health
    def initialize(name:, health: 100)
        @name = name.capitalize
        @health = health
    end

    def say_hello = "I'm #{@name} with a health of #{@health}"

    def drain 
        @health -= 10
    end

    def boost 
        @health += 15
    end
end

player_4 = Player.new(name: "alex", health: 125)
puts player_4.name
puts player_4.health
player_4.name = "Alexander"
puts player_4.name
puts player_4.health
puts player_4.score
puts player_4
