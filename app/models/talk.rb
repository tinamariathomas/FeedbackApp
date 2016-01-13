class Talk < ActiveRecord::Base
  belongs_to :event
  has_many :feedbacks, dependent: :destroy

  validates :event_id, presence: true
  validates :title, presence: true
  validates :presenters, presence: true

end
