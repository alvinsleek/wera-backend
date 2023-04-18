class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :full_name
      t.string :company_name
      t.string :company_location
      t.integer :user_id
      t.string :company_description
      t.string :email_address
      t.string :company_logo

      t.timestamps
    end
  end
end
