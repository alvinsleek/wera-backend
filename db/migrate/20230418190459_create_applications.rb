class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.integer :opportunity_id
      t.integer :profile_id

      t.timestamps
    end
  end
end
