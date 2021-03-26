class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :type

      t.timestamps
    end
  end
end
