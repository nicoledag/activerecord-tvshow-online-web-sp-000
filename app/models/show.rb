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

  def Show::least_popular_show
    self.where("rating").order(rating: :asc).first
  end

  def Show::ratings_sum
    self.sum(:rating)
  end

  def Show::popular_shows
    self.where("rating > ?", 5)
  end

  def Show::shows_by_alphabetical_order
    self.where("name").order(rating: :desc)
  end
end
