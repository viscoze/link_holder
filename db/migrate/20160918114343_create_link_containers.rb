class CreateLinkContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :link_containers do |t|
      t.string :title

      t.timestamps
    end
  end
end
