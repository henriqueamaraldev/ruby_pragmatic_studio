class Movie
    attr_accessor :title, :rank

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

movie1 = Movie.new(title: "Tenant", rank: 1)

number_roled = rand(1..6)
first_condition = number_roled < 3
second_condition = number_roled < 5

if first_condition 
    movie1.thumbs_down
    puts "#{movie1.title} got a 👎🏻"
elsif second_condition
    puts "#{movie1.title} got skipped"
else
    movie1.thumbs_up
    puts "#{movie1.title} got a 👍🏻"
end

case
when first_condition 
    movie1.thumbs_down
    puts "#{movie1.title} got a 👎🏻"
when second_condition
    puts "#{movie1.title} got skipped"
else
    movie1.thumbs_up
    puts "#{movie1.title} got a 👍🏻"
end

case number_roled
when 1..2 
    movie1.thumbs_down
    puts "#{movie1.title} got a 👎🏻"
when 3..4
    puts "#{movie1.title} got skipped"
else
    movie1.thumbs_up
    puts "#{movie1.title} got a 👍🏻"
end