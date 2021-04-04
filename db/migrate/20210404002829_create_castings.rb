class CreateCastings < ActiveRecord::Migration[6.0]
  def change
    create_table :castings do |t|
      t.references :character, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true
      t.string :actor

      t.timestamps
    end
  end
end
