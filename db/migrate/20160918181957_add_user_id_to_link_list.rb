class AddUserIdToLinkList < ActiveRecord::Migration[5.0]
  def change
    add_column :link_lists, :user_id, :integer
  end
end
