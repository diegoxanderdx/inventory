class VariationsController < ApplicationController
  before_action :set_material
  before_action :set_variation, only: %i[ show edit update destroy ]

  # GET /variations or /variations.json
  def index
    @variations = @material.variations.all
  end

  # GET /variations/1 or /variations/1.json
  def show
  end

  # GET /variations/new
  def new
    @variation = @material.variations.build
  end

  # GET /variations/1/edit
  def edit
  end

  # POST /variations or /variations.json
  def create
    @variation = @material.variations.build(variation_params)

    respond_to do |format|
      if @variation.save
        format.html { redirect_to material_variations_path, notice: "La variacion de material se ha creado exitosamente." }
        format.json { render :show, status: :created, location: @variation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variations/1 or /variations/1.json
  def update
    respond_to do |format|
      if @variation.update(variation_params)
        format.html { redirect_to material_variations_path, notice: "La variacion de material se ha actualizado." }
        format.json { render :show, status: :ok, location: @variation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variations/1 or /variations/1.json
  def destroy
    @variation.destroy

    respond_to do |format|
      format.html { redirect_to [@material, :variations], notice: "La variacion de material se ha eliminado exitosamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:material_id])
    end
    
    def set_variation
      @variation = @material.variations.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def variation_params
      params.require(:variation).permit(:color, :size, :unit_of_measurement, :total_qtty, :remaining_qtty, :price, :material_id)
    end
end
