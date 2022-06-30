class ConciertosController < ApplicationController
  before_action :set_concierto, only: %i[ show edit update destroy ]

  # GET /conciertos or /conciertos.json
  def index
    @conciertos = Concierto.all
  end

  # GET /conciertos/1 or /conciertos/1.json
  def show
  end

  # GET /conciertos/new
  def new
    @concierto = Concierto.new
  end

  # GET /conciertos/1/edit
  def edit
  end

  # POST /conciertos or /conciertos.json
  def create
    @concierto = Concierto.new(concierto_params)

    respond_to do |format|
      if @concierto.save
        format.html { redirect_to concierto_url(@concierto), notice: "Concierto was successfully created." }
        format.json { render :show, status: :created, location: @concierto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @concierto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conciertos/1 or /conciertos/1.json
  def update
    respond_to do |format|
      if @concierto.update(concierto_params)
        format.html { redirect_to concierto_url(@concierto), notice: "Concierto was successfully updated." }
        format.json { render :show, status: :ok, location: @concierto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @concierto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conciertos/1 or /conciertos/1.json
  def destroy
    @concierto.destroy

    respond_to do |format|
      format.html { redirect_to conciertos_url, notice: "Concierto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concierto
      @concierto = Concierto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concierto_params
      params.require(:concierto).permit(:lugar, :fecha, :asistentes, :group_id)
    end
end
