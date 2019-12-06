class CreateIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :identities do |t|
      t.string :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
