# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :name , null: false
      t.string :user_id

      t.timestamps
    end
  end
end
