class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.string :backgroundcolor
      t.string :font
      t.string :color

      t.timestamps
    end
  end
end
