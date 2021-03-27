class AddPokemonlistToJoinTable < ActiveRecord::Migration[6.1]
  def change
    add_column :trainer_pokemons, :pokemon_list, :string
  end
end
