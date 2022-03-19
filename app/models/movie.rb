require 'pry'
class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end
    
    def self.first_movie
        self.first
    end
    
    def self.last_movie
        self.last
    end
    
    def self.movie_count
        self.count
    end
    
    def self.find_movie_with_id(id)
        self.find(id)
    end
    
    def self.find_movie_with_attributes(attribute)
        self.find_by(attribute)
    end
    
    def self.find_movies_after_2002
        self.where("release_date > ?",2002)
    end
    
    def update_with_attributes(update)
        self.update(update)
    end
    
    def self.update_all_titles(update)
        self.update(title: update)
    end
    
    def self.delete_by_id(id)
        item_to_delete = self.find(id)
        item_to_delete.destroy
    end
    
    def self.delete_all_movies
        self.destroy_all
    end
end