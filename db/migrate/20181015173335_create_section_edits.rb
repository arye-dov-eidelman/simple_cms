class CreateSectionEdits < ActiveRecord::Migration[5.2]
  def change
    create_table :section_edits do |t|
      t.integer :admin_user_id
      t.integer :section_id
      t.string :summery

      t.index :admin_user_id
      t.index :section_id
      
      t.timestamps
    end
  end
end
