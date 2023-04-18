class CreateOpportunities < ActiveRecord::Migration[7.0]
  def change
    create_table :opportunities do |t|
      t.integer :employer_id
      t.string :description
      t.integer :cut_off
      t.string :job_type
      t.string :qualifications
      t.string :estimated_salary
      t.string :responsibilities
      t.datetime :application_deadline
      t.string :title

      t.timestamps
    end
  end
end
