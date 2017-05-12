class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.string :image

      t.timestamps
    end
  end
end
