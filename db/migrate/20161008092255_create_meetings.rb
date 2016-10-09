class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :date
      t.string :location
      t.string :participants

      t.timestamps
    end
  end
end
