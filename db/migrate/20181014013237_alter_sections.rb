class AlterSections < ActiveRecord::Migration[5.2]
  def up
    add_index('sections', 'page_id')
  end

  def down
    remove_index('sections', 'page_id')
  end
end
