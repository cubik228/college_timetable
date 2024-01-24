# frozen_string_literal: true

class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.string :room, null: false

      t.timestamps
    end
  end
end
