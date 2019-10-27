class AddIndexToUsersEmail2 < ActiveRecord::Migration[5.2]
=begin
  def change
    add_index :users, :email, unique: true
  end
=end
end
