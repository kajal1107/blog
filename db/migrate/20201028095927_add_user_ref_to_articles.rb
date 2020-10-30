class AddUserRefToArticles < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :user_id, :integer
  	add_foreign_key :articles, :users
  end
end
