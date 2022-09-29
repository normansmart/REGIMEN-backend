class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :front_lang
      t.string :back_lang
      t.string :key
      t.boolean :private

      t.timestamps
    end
  end
end
