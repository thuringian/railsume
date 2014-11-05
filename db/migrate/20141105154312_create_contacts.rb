class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :link
      t.text :image

      t.timestamps
    end
  end
end
