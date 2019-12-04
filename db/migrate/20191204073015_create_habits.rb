class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :body
      t.string :standard
      t.integer :field_id
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
