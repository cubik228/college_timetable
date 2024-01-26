class CreateTimetables < ActiveRecord::Migration[7.1]
  def change
    create_table :timetables do |t|
      t.integer :number

      t.timestamps
    end
  end
end
