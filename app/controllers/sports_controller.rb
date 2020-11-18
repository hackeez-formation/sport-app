class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :edit, :update, :destroy]

  # GET /sports
  def index
    @sports = Sport.all
  end

  # GET /sports/:id
  def show
  end

  # GET /sports/new
  def new
    @sport = Sport.new
  end

  # POST /sports/create
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      flash[:notice] = "Votre sport a été correctement sauvegardé !"
      redirect_to sport_path(@sport.id)
    else
      flash[:alert] = "Une erreur est survenue !"
      render 'new'
    end
    
  end

  def edit
  end

  private 

  def sport_params
    params.require(:sport).permit(:name)
  end
  
  def set_sport
    @sport = Sport.find(params[:id])
  end
end
