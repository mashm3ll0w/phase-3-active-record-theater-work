class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    !self.hired ? self.update(hired: true) : self.hired
  end
end
