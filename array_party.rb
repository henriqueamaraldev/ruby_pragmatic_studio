list_of_names = ["henrique", "pedro", "arthur"]
puts list_of_names[0]
puts list_of_names[1]
puts list_of_names[2]

seats = %w[kermit fozzie gonzo]
puts seats[0]
puts seats[1]
puts seats[2]

test = []
test[1] = "second element"
puts test[0]
puts test.size

test.push("third")
test[2] = "third element"
puts test

test[0] = "first element"
puts test

test.pop
puts test

test[0] = nil
puts test.size

test.compact!
puts test.size

test[1] = test[0]
test[0] = "first element"
puts test.sample
puts test.sample

class Movie
    def initialize(title:, rank:)
        @title = title
        @rank = rank 
    end

    def thumbs_up
        @rank += 1

    end
    
    def thumbs_down
        @rank -= 1
        
    end

    def info
        "#{@title} has a rank of #{@rank}."
    end
end

movie1 = Movie.new(title: "Movie 1", rank: 1)
movie2 = Movie.new(title: "Movie 2", rank: 2)
movie3 = Movie.new(title: "Movie 3", rank: 3)

movie_list = []
movie_list.push(movie1)
movie_list.push(movie2)
movie_list.push(movie3)
puts movie_list[0].info

movie_list.each do |movie|
    puts movie.thumbs_up
    puts movie.info
end

items = ["towel", "backpack", "t-shirt", "socks"]
puts items.size
items[0]
items[2]
items[3]

items.push("sandals")
items.push("notebook")

puts items.include?("notebook")
items.sample
items.pop
puts items.include?("notebook")

puts items

items.insert(2, "teste")
puts items

puts items.index("sandals")
puts items.delete("sandals")

puts "FINAL"

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

player1 = Player.new(name: "Finn", health: 125)
player2 = Player.new(name: "Lucy", health: 125)
player3 = Player.new(name: "Jase", health: 125)
player4 = Player.new(name: "Alex", health: 125)

players = [player1, player2, player3, player4]

players.each do |player|
    number_rolled = rand(1..6)
  
    case number_rolled
    when 1..2
      player.drain
      puts "#{player.name} got drained 😩"
    when 3..4
      puts "#{player.name} got skipped"
    else
      player.boost
      puts "#{player.name} got boosted 😁"
    end
  end