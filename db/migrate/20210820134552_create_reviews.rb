class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :style
      t.string :recipe
      t.string :adatives
      t.string :details
      t.boolean :favorite
      t.belongs_to :coffeee

      t.timestamps
    end
  end
end
