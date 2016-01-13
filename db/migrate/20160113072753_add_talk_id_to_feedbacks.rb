class AddTalkIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :talk_id, :string
  end
end
