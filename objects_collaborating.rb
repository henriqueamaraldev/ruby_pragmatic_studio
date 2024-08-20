class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title:, rank: 5)
      @title = title.capitalize
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
    
  def to_s
      "#{@title} has a rank of #{@rank}."
  end
end

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
    puts @movies

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
    end
  end
end

movie_1 = Movie.new(title: "goonies", rank: 10)
movie_2 = Movie.new(title: "ghostbusters", rank: 9)
movie_3 = Movie.new(title: "goldfinger")

playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play
