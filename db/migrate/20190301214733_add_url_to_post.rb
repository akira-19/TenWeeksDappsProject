class AddUrlToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :siteURL, :string
  end
end
