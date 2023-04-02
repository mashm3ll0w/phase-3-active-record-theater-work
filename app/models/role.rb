class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |audition| audition.actor }
  end

  def locations
    self.auditions.map { |audition| audition.location }
  end

  def lead
    # isHired = self.auditions.find { |audition| audition.hired }
    # isHired == nil ? "No actor has been hired for this role" : isHired
    if self.auditions.find { |audition| audition.hired } == nil
      "No actor has been hired for this role"
    else
      self.auditions.find { |audition| audition.hired }
    end
  end
end
