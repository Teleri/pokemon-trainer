class PokemonsController < ApplicationController
  before_action :find_pokemon, only: [:show, :edit, :update]

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      redirect_to @pokemon
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    else
      render 'edit'
    end
  end

  def find_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:number, :name, :height, :weight, :type, :move_list, :ability_list)
  end
end
