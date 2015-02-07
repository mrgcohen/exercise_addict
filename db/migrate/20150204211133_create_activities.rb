class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :exercise, index: true
      t.references :intensity, index: true
      t.boolean :commute
      t.integer :duration
      t.integer :distance
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :activities, :exercises
    add_foreign_key :activities, :intensities
  end
end
