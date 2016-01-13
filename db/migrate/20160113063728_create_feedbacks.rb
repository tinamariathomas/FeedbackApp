class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.text :comments
      t.integer :rating

      t.timestamps null: false
    end
  end
end
