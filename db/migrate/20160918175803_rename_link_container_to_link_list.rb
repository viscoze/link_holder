class RenameLinkContainerToLinkList < ActiveRecord::Migration[5.0]
  def change
    rename_table :link_containers, :link_lists
  end
end
