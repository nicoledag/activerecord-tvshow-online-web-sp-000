class Show < ActiveRecord::Base

  def Show::highest_rating
    self.maximum(:rating)
  end

end
