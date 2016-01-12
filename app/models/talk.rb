class Talk < ActiveRecord::Base
  # def setup
  #   # @valid = Event.new(name: "vodQA", date:"2016-01-22")
  # end
  belongs_to :event

end
