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

movie1 = Movie.new(title: "Filme 1", rank: 1)
puts movie1.info
puts movie1.inspect
puts movie1.thumbs_up
puts movie1.info
puts movie1.thumbs_down
puts movie1.thumbs_down
puts movie1.info

