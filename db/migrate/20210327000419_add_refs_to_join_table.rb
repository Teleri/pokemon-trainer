class AddRefsToJoinTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :trainer_pokemons, :trainer, foreign_key: true
    add_reference :trainer_pokemons, :pokemon, foreign_key: true
  end
end
