class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.string :filename
      t.integer :chapter_id

      t.timestamps
    end
  end
end
