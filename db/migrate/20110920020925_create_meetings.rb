class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
