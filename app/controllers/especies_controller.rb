class EspeciesController < ApplicationController
  before_action :set_especy, only: [:show, :edit, :update, :destroy]

  # GET /especies
  # GET /especies.json
  def index
    @especies = Especie.all
  end

  # GET /especies/1
  # GET /especies/1.json
  def show
  end

  # GET /especies/new
  def new
    @especy = Especie.new
  end

  # GET /especies/1/edit
  def edit
  end

  # POST /especies
  # POST /especies.json
  def create
    @especy = Especie.new(especy_params)

    respond_to do |format|
      if @especy.save
        format.html { redirect_to @especy, notice: 'Especie was successfully created.' }
        format.json { render :show, status: :created, location: @especy }
      else
        format.html { render :new }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especies/1
  # PATCH/PUT /especies/1.json
  def update
    respond_to do |format|
      if @especy.update(especy_params)
        format.html { redirect_to @especy, notice: 'Especie was successfully updated.' }
        format.json { render :show, status: :ok, location: @especy }
      else
        format.html { render :edit }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especies/1
  # DELETE /especies/1.json
  def destroy
    @especy.destroy
    respond_to do |format|
      format.html { redirect_to especies_url, notice: 'Especie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especy
      @especy = Especie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especy_params
      params.require(:especy).permit(:nome, :cientifico, :nome, :popular)
    end
end
