class ImportMovieData
  attr_reader :movies_array

  def initialize
    @movies_array = []
    movie_import = File.open('./lib/movies.txt', 'r').read
    @movies_array = movie_import.split(/\n+/)
  end
end
