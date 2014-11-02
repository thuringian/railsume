class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :school
      t.string :title
      t.string :major
      t.string :honors
      t.string :year
      t.string :image

      t.timestamps
    end
  end
end
