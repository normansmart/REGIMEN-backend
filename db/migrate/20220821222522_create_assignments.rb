class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.integer :cohort_id
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
