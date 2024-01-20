class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :subject 
      t.integer :teacher_id 
      t.integer :day_on_wek 
      
      t.timestamps
    end
  end
end
