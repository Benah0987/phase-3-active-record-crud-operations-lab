class Movie < ActiveRecord::Base
    # finds all the movies for a given year
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
      end

end

# creating a new movie
new_movie = Movie.new(title: "shawshank Redemption", release_date: 2023, director: "vavdad", lead: "Alexander Duma", in_theaters: true)
new_movie.save

# first method fetches the first record from the movies table
first_movie = Movie.first

# last method fetches the last record from the movies table 
last_movie = Movie.last

# returns the number of records in the movies table
count = Movie.count

# Return a movie from the table based on its id using the .find method:
movie = Movie.find(id)

# fist fight
# Return a movie from the table based on its attributes using the .find_by method
movie = Movie.find_by(title: "Your Movie Title")

# where clause to select the appropriate movies released after 2002
movies = Movie.where("release_date > ?", 2002)


# updates

movie = Movie.find(1)
movie.update(title: "New Movie Title")

# o update the title of all movies in the movies table, 
Movie.update_all(title: "New Movie Title")

# To delete a single item
movie = Movie.find(1)
movie.destroy

# This will delete all records in the movies table.
Movie.destroy_all



