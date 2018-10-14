class AlterPages < ActiveRecord::Migration[5.2]
  def up
    add_index('pages', 'subject_id')
    add_index('pages', 'permalink')
  end

  def down
    add_index('pages', 'permalink')
    add_index('pages', 'subject_id')
  end
end
