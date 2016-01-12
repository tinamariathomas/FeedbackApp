class AddEventidToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :event_id, :string
  end
end
