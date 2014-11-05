class RemoveColumnFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :image, :text
  end
end
