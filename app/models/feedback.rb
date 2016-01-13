class Feedback < ActiveRecord::Base
  after_initialize :init_config

  validates_inclusion_of :rating, in: 1..5

  def init_config
    self.name ||= "Anonymous"
  end
end
