class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :published, null: false
      t.string :name, null: false
      t.string :fone, null: false
      t.string :ftwo
      t.string :fthree
      t.string :ffour
      t.string :ffive
      t.string :image

      t.timestamps
    end
  end
end
