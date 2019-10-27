class AddPasswordDigestToUsers < ActiveRecord::Migration[5.2]
=begin
  def change
    add_column :users, :password_digest, :string
  end
=end
end
