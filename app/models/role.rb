class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |audition| audition.actor }
  end

  def locations
    self.auditions.map { |audition| audition.location }
  end

  def lead
    if self.auditions.find { |audition| audition.hired } == nil
      "No actor has been hired for this role"
    else
      self.auditions.find { |audition| audition.hired }
    end
  end

  def understudy
    if self.auditions.first.hired == true && self.auditions.second.hired == true
      self.auditions.second
    else
      "No actor has been hired for understudy for this role"
    end
  end
end
