class Movie < ActiveRecord::Base
    
    def self.all_ratings; ['G','PG','PG-13','R'] ; 
    end
    
    def self.similar_movies(title)
        director = Movie.find(title).director
        self.where(director: director)
    end
end