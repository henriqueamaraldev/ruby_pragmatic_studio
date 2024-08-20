
class Player
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

player1 = Player.new(name: "yAgo")
puts player1.inspect
puts player1.say_hello

player1 = Player.new(name: "lucy", health: 90)
puts player1.inspect
puts player1.say_hello

player1 = Player.new(name: "Jase")
puts player1.inspect
puts player1.say_hello

player1 = Player.new(name: "Alex", health: 125)
puts player1.inspect
puts player1.say_hello

puts player1.drain
puts player1.say_hello
