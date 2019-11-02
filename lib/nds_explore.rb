$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp directors_database
end

def print_first_directors_movie_titles
  first_director_movies = directors_database[0][:movies]
  row_index = 0 
  while row_index < first_director_movies.length do 
    puts first_director_movies[row_index][:title]
    row_index += 1 
  end  
  
end
