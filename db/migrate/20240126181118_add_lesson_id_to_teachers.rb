class AddLessonIdToTeachers < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :teachers , :lesson
  end
end
