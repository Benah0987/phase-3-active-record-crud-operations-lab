class Movie < ActiveRecord::Base
    # finds all the movies for a given year
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
      end

end