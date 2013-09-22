class AddBlurbToBooks < ActiveRecord::Migration
  def change
    add_column :books, :blurb, :text
  end
end
