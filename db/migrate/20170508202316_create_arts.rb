class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
