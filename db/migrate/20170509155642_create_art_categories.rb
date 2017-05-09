class CreateArtCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :art_categories do |t|
      t.belongs_to :art, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
