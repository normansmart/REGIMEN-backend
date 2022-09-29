class AddLanguageToCommits < ActiveRecord::Migration[7.0]
  def change
    add_column :commits, :language, :string
   
  end
end
