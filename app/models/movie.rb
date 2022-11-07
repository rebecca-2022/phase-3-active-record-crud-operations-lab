require 'pry'
class Movie < ActiveRecord::Base

    def self.create_with_title title
        # movie = Movie.new(title:title) 
        # movie.save
        movie = Movie.create title: title
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        all = Movie.all
        all.count
    end

    def self.find_movie_with_id(id)
        movie = Movie.find(id)
        movie
    end

    def self.find_movie_with_attributes(attributes)
        movie = Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
            movie = Movie.where("release_date > 2002")
            movie
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(id)
        Movie.find_by(id: id).delete
    end

    def  self.delete_all_movies
        Movie.destroy_all
    end

end

# binding.pry
# 0