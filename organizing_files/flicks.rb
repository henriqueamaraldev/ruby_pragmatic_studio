require_relative "lib/flicks/movie"
require_relative "lib/flicks/playlist"

movie_1 = Movie.new(title: "goonies", rank: 10)
movie_2 = Movie.new(title: "ghostbusters", rank: 9)
movie_3 = Movie.new(title: "goldfinger")

playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play
