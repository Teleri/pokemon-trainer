class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :favourite_pokemon
      t.string :hometown

      t.timestamps
    end
  end
end
