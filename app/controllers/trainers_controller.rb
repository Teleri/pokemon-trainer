class TrainersController < ApplicationController
  before_action :find_trainer, only: [:show, :edit, :update]

  def show
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      flash[:success] = "Trainer successfully created"
      redirect_to @trainer
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @trainer.update(trainer_params)
      redirect_to @trainer
    else
      render 'edit'
    end
  end

  def find_trainer
    @trainer = Trainer.find(params[:id])
  end

  def trainer_params
    params.require(:trainer).permit(:name, :age, :gender, :favourite_pokemon, :hometown)
  end
end
