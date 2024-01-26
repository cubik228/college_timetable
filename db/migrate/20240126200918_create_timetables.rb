class CreateTimetables < ActiveRecord::Migration[7.1]
  def change
    create_table :timetables do |t|
      t.integer :number
      t.integer :group_id

      t.timestamps
    end
  end
end
 