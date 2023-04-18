class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :full_name
      t.string :phone_number
      t.datetime :date_of_birth
      t.string :skills
      t.string :biography
      t.string :resume
      t.string :profile_picture
      t.string :email_address

      t.timestamps
    end
  end
end
