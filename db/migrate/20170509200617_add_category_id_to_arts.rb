class AddCategoryIdToArts < ActiveRecord::Migration[5.1]
  def change
    add_column :arts, :category_id, :integer
  end
end
