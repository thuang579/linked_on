class RemoveColumnUserIdFromOccupation < ActiveRecord::Migration
  def change
  	remove_column :occupations, :user_id
  end
end
