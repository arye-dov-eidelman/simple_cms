class AlterVisibilityDefualt < ActiveRecord::Migration[5.2]
  def up
    change_column('subjects', 'visible', :boolean, default: false)
    change_column('pages', 'visible', :boolean, default: false)
    change_column('sections', 'visible', :boolean, default: false)
  end

  def down
    change_column('sections', 'visible', :boolean, default: nil)
    change_column('pages', 'visible', :boolean, default: nil)
    change_column('subjects', 'visible', :boolean, default: nil)
  end
end
