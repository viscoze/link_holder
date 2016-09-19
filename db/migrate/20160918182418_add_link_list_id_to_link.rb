class AddLinkListIdToLink < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :link_list_id, :integer
  end
end
