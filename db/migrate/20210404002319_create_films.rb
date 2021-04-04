class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.date :release_date
      t.string :directed_by
      t.string :rating
      t.string :genre

      t.timestamps
    end
  end
end
