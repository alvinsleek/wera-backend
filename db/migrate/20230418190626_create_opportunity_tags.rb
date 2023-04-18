class CreateOpportunityTags < ActiveRecord::Migration[7.0]
  def change
    create_table :opportunity_tags do |t|
      t.integer :opportunity_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
