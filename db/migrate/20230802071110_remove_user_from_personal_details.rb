class RemoveUserFromPersonalDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :personal_details, :user_id
  end
end
