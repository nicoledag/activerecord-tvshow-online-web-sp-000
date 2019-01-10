class Show < ActiveRecord::Base

  def Show::highest_rating
    self.maximum(:rating)
  end

  def Show::most_popular_show
    self.where("rating").order(rating: :desc).first
  end

  def Show::lowest_rating
    self.minimum(:rating)
  end

end
