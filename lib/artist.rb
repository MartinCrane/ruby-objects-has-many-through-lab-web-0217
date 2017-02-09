class Artist
	attr_accessor :songs
	attr_reader :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
		song.genre.artists << self
	end

	def genres
		@songs.map {|song| song.genre}
	end
end