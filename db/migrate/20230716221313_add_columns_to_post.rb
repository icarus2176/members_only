class AddColumnsToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
    add_column :posts, :user_id, :integer
  end
end
