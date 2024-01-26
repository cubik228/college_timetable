# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :subject, null: false
      t.integer :timetable_id
      t.integer :day_on_wek, null: false
      t.timestamps
    end
  end
end
