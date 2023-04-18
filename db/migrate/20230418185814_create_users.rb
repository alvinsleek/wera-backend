class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password_digest
      t.boolean :is_admin
      t.string :user_type

      t.timestamps
    end
  end
end
