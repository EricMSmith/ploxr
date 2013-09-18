class AddPositionInChapterToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :position_in_chapter, :integer
  end
end
