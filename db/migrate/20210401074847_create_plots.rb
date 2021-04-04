class CreatePlots < ActiveRecord::Migration[6.1]
  def change
    create_table :plots do |t|
      t.text :description
      t.integer :goal_id
      t.integer :book_id

      t.timestamps
    end
  end
end
