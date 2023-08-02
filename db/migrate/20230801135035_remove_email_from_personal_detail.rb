class RemoveEmailFromPersonalDetail < ActiveRecord::Migration[7.0]
  def change
    remove_column :personal_details, :email
  end
end
