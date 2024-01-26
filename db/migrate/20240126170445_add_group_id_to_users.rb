class AddGroupIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :groups , :user
  end
end
