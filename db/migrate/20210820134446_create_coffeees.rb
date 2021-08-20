class CreateCoffeees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffeees do |t|
      t.string :name
      t.string :roast
      t.string :body
      t.string :acidity
      t.integer :rating
      t.string :category
      t.string :imgurl, default: "https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2124&q=80"
      t.belongs_to :brand

      t.timestamps
    end
  end
end
