class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :year_of_admission
      t.string :year_of_completion
      t.string :institution
      t.string :qualification
      t.integer :profile_id

      t.timestamps
    end
  end
end
