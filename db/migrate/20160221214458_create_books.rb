class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :blurb
      t.date :release_date
      t.integer :rating
      t.boolean :best_seller

      t.timestamps null: false
    end
  end
end
