class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.string :start_date
      t.string :end_date
      t.string :city
      t.string :state
      t.text :summary

      t.timestamps
    end
  end
end
