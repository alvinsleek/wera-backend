class CreateProfileTags < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_tags do |t|
      t.integer :profile_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
