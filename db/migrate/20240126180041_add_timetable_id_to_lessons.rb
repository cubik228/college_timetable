class AddTimetableIdToLessons < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :lessons , :timetable
  end
end
