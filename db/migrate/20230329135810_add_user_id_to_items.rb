class AddUserIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :items, :user, foreign_key: true
  end
end
