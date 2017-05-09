class CreateUserArtViews < ActiveRecord::Migration[5.1]
  def change
    create_table :user_art_views do |t|
      t.belongs_to :art, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
