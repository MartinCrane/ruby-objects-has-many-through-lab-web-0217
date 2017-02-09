class Song

	attr_accessor :songs, :artist
	attr_reader :name, :genre

	def initialize(name, genre)
		@name = name
		@genre = genre
		genre.songs << self
	end

end