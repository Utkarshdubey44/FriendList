class AddUserToPersonalDetail < ActiveRecord::Migration[7.0]
  def change
    add_reference :personal_details, :user
  end
end
