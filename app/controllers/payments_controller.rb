class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit


  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    @cedula = params[:identification]

    url = 'http://localhost/servicio/Despachador.php'
    parametros = {params: {
        "servicio" => 8,
        "numtarjeta" => payment_params[:card_number],
        "cedtitular" => "V#{payment_params[:identification]}",
        "mesexpiracion" => payment_params[:expiration_month],
        "annoexpiracion" => payment_params[:expiration_year],
        "codseguridad" => payment_params[:security_code],
        "monto" => payment_params[:amount]
    }}

    #     "servicio" => 4,
    #     "numtarjeta" => 1234567898765432,
    #     "cedtitular" => 20296530,
    #     "mesexpiracion" => 8,
    #     "annoexpiracion" => 17,
    #     "codseguridad" => 301,
    #     "monto" => 3000
    # }}
    resultado = ActiveSupport::JSON.decode(RestClient.get(url, parametros))
    puts payment_params[:identification]
    puts resultado

 if resultado["exito"] == "true"
      puts "entro al if"
      respond_to do |format|
      if @payment.save
        format.html { redirect_to root_path, notice: 'Su pago ha sido procesado satisfactoriamente' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
    else
      puts "entro al else"
      respond_to do |format|
        format.html { render :new , notice: 'Hubo un problema con su solicitud, consulte a su banco para mas informacion'}
      end
    end

  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  

  # DELETE /payments/1
  # DELETE /payments/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:amount, :identification, :card_number, :expiration_month, :expiration_year, :security_code)
    end
end
