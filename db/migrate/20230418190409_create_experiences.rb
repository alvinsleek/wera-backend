class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :year
      t.string :company
      t.string :job_description
      t.integer :profile_id

      t.timestamps
    end
  end
end
