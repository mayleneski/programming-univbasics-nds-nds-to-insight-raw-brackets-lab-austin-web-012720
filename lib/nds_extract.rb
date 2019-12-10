$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# pp directors_database

def directors_totals(nds)

  directors_totals = {}
  row_index = 0
  
  while row_index < directors_database.length do
    
    key = directors_database[row_index][:name] 
    # This is to access the director's name for the key
    
    index = 0
    movies = directors_database[row_index][:movies]
    # movies_hash accesses the worldwide_gross value
    
    value = 0
    
      while index < movies.length do
        
        value += movies[index][:worldwide_gross]
        index += 1
        
      end
    
    directors_totals[key] = value
    row_index += 1
    
  end 
  
  directors_totals
  
  # nil
end
