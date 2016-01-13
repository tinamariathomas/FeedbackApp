class Feedback < ActiveRecord::Base

  belongs_to :talk
  validates_inclusion_of :rating, in: 1..5

  after_initialize :init_config
  def init_config
    self.name ||= "Anonymous"
  end
end
