class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.integer :status
      t.date :b_date
      t.date :r_date
      t.string :borrow

      t.timestamps
    end
  end
end
