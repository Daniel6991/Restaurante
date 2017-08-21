class LibretaController < ApplicationController
  before_action :set_libretum, only: [:show, :edit, :update, :destroy]

  # GET /libreta
  # GET /libreta.json
  def index
    @libreta = Libretum.all
  end

  # GET /libreta/1
  # GET /libreta/1.json
  def show
  end

  # GET /libreta/new
  def new
    @libretum = Libretum.new
  end

  # GET /libreta/1/edit
  def edit
  end

  # POST /libreta
  # POST /libreta.json
  def create
    @libretum = Libretum.new(libretum_params)

    respond_to do |format|
      if @libretum.save
        format.html { redirect_to @libretum, notice: 'Nota de Pedido Registrada Correctamente' }
        format.json { render :show, status: :created, location: @libretum }
      else
        format.html { render :new }
        format.json { render json: @libretum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libreta/1
  # PATCH/PUT /libreta/1.json
  def update
    respond_to do |format|
      if @libretum.update(libretum_params)
        format.html { redirect_to @libretum, notice: 'Nota de Pedido Actualizada Correctamente.' }
        format.json { render :show, status: :ok, location: @libretum }
      else
        format.html { render :edit }
        format.json { render json: @libretum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libreta/1
  # DELETE /libreta/1.json
  def destroy
    @libretum.destroy
    respond_to do |format|
      format.html { redirect_to libreta_url, notice: 'Nota de Pedido Eliminada Correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libretum
      @libretum = Libretum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libretum_params
      params.require(:libretum).permit(:nombre, :edad)
    end
end
