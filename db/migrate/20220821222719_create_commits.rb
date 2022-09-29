class CreateCommits < ActiveRecord::Migration[7.0]
  def change
    create_table :commits do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.string :commit

      t.timestamps
    end
  end
end
