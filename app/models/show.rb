

class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.all.maximum(:rating)
  end
    
    
  def self.most_popular_show
    self.all.find_by(rating: highest_rating)
  end
  
  def self.lowest_rating
    self.all.minimum(:rating)
  end
  
  def self.least_popular_show
    self.all.find_by(rating: lowest_rating)
  end
  
  def self.ratings_sum
    self.all.sum(:rating)
  end
  
end