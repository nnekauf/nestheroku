class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.string :completion_date
      t.integer :reader_id

      t.timestamps
    end
  end
end
