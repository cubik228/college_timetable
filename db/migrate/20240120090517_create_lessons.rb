# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :subject
      t.integer :day_on_wek
      t.integer :timetable_id
      t.timestamps
    end
  end
end
