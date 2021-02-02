class FoliosController < ApplicationController
  before_action :set_folio, only: %i[ show edit update destroy ]

  # GET /folios or /folios.json
  def index
    @folios = Folio.all
  end

  # GET /folios/1 or /folios/1.json
  def show
  end

  # GET /folios/new
  def new
    @folio = Folio.new
  end

  # GET /folios/1/edit
  def edit
  end

  # POST /folios or /folios.json
  def create
    @folio = Folio.new(folio_params)

    respond_to do |format|
      if @folio.save
        format.html { redirect_to @folio, notice: "Folio was successfully created." }
        format.json { render :show, status: :created, location: @folio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @folio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folios/1 or /folios/1.json
  def update
    respond_to do |format|
      if @folio.update(folio_params)
        format.html { redirect_to @folio, notice: "Folio was successfully updated." }
        format.json { render :show, status: :ok, location: @folio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @folio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folios/1 or /folios/1.json
  def destroy
    @folio.destroy
    respond_to do |format|
      format.html { redirect_to folios_url, notice: "Folio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folio
      @folio = Folio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def folio_params
      params.require(:folio).permit(:numero_folio)
    end
end
