class AthletesController < ApplicationController
  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new(athletes_params)
 
    if @athlete.save
      redirect_to athletes_path
    else
      render :new
    end
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
  
    if @athlete.update(athletes_params)
      redirect_to athletes_path
    else
      render :edit
    end
  end
  
  
  # def create
  #   @athlete = athlete.new(athletes_params)
 
  #   if @athlete.save
  #     redirect_to athletes_path
  #   else
  #     render :new
  #   end
  # end

  def destroy
    Athlete.find(params[:id]).destroy
    redirect_to athletes_path
  end
 
  private
 
    def athletes_params
      params.require(:athletes).permit(:first_name, :last_name, :hair_color, :eye_color, :age, :gender, :mortality)
    end




end



