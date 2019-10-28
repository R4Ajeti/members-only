class AddRememberDigestToUsers < ActiveRecord::Migration[5.2]
=begin
  def change
    add_column :users, :remember_digest, :string
  end
=end
end
