class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.date :check_date
      t.integer :body
      t.references :user, foreign_key: true
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
