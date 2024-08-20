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

if __FILE__ == $0
  movie = Movie.new("Star Wars", 10)
  puts movie
end