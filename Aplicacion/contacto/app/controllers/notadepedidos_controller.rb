class NotadepedidosController < ApplicationController
  before_action :set_notadepedido, only: [:show, :edit, :update, :destroy]

  # GET /notadepedidos
  # GET /notadepedidos.json
  def index
    @notadepedidos = Notadepedido.all
  end

  # GET /notadepedidos/1
  # GET /notadepedidos/1.json
  def show
  end

  # GET /notadepedidos/new
  def new
    @notadepedido = Notadepedido.new
  end

  # GET /notadepedidos/1/edit
  def edit
  end

  # POST /notadepedidos
  # POST /notadepedidos.json
  def create
    @notadepedido = Notadepedido.new(notadepedido_params)

    respond_to do |format|
      if @notadepedido.save
        format.html { redirect_to @notadepedido, notice: 'Notadepedido was successfully created.' }
        format.json { render :show, status: :created, location: @notadepedido }
      else
        format.html { render :new }
        format.json { render json: @notadepedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notadepedidos/1
  # PATCH/PUT /notadepedidos/1.json
  def update
    respond_to do |format|
      if @notadepedido.update(notadepedido_params)
        format.html { redirect_to @notadepedido, notice: 'Notadepedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @notadepedido }
      else
        format.html { render :edit }
        format.json { render json: @notadepedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notadepedidos/1
  # DELETE /notadepedidos/1.json
  def destroy
    @notadepedido.destroy
    respond_to do |format|
      format.html { redirect_to notadepedidos_url, notice: 'Notadepedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notadepedido
      @notadepedido = Notadepedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notadepedido_params
      params.require(:notadepedido).permit(:nombre_cliente, :mesa, :platos, :precios, :fecha)
    end
end
