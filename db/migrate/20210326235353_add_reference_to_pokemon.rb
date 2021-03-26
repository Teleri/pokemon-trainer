class AddReferenceToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_reference :pokemons, :trainer, foreign_key: true
  end
end
