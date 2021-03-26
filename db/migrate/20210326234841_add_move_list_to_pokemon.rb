class AddMoveListToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :move_list, :text, array: true, default: []
    add_column :pokemons, :ability_list, :text, array: true, default: []
  end
end
