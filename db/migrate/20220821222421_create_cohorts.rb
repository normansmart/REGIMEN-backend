class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :tag
      t.string :message
      t.integer :admin_id
      t.string :join_key
      t.boolean :private

      t.timestamps
    end
  end
end
