class CertsController < ApplicationController
  before_action :set_cert, only: [:show, :edit, :update, :destroy]

  # GET /certs
  # GET /certs.json
  def index
    @certs = Cert.all
  end

  # GET /certs/1
  # GET /certs/1.json
  def show
  end

  # GET /certs/new
  def new
    @cert = Cert.new
  end

  # GET /certs/1/edit
  def edit
  end

  # POST /certs
  # POST /certs.json
  def create
    @cert = Cert.new(cert_params)

    respond_to do |format|
      if @cert.save
        format.html { redirect_to certs_url, notice: 'Certificado creado exitosamente.' }
        format.json { render :show, status: :created, location: @cert }
      else
        format.html { render :new }
        format.json { render json: @cert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certs/1
  # PATCH/PUT /certs/1.json
  def update
    respond_to do |format|
      if @cert.update(cert_params)
        format.html { redirect_to certs_url, notice: 'Certificado actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @cert }
      else
        format.html { render :edit }
        format.json { render json: @cert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certs/1
  # DELETE /certs/1.json
  def destroy
    @cert.destroy
    respond_to do |format|
      format.html { redirect_to certs_url, notice: 'Certificado eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert
      @cert = Cert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_params
      params.require(:cert).permit(:title, :body, :image)
    end
end
