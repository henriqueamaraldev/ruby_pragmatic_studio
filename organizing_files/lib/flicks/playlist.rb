require_relative "snackbar"

class Playlist
  
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies.push(movie)
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "*" * 30
    puts "#{@name}'s playlist"
    
    Snackbar::SNACKS.each do |snack|
      puts "#{snack.name} for #{snack.price}"
    end

    @movies.each do |movie|
  
      number_rolled = roll_die
    
      case number_rolled 
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumb down"
      when 3..4
        puts "#{movie.title} got skipped"
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumb up"
      end

      snack = Snackbar.random_snack

      puts "During #{movie.title}, #{@name} ate #{snack.name} for #{snack.price}."
    end
  end
end