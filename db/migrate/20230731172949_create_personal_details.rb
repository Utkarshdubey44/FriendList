class CreatePersonalDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_details do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :gender
      t.string :description

      t.timestamps
    end
  end
end
