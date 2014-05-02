class AbcapsController < ApplicationController
  before_action :set_abcap, only: [:show, :edit, :update, :destroy]

  # GET /abcaps
  # GET /abcaps.json
  def index
    @abcaps = Abcap.all
  end

  # GET /abcaps/1
  # GET /abcaps/1.json
  def show
  end

  # GET /abcaps/new
  def new
    @abcap = Abcap.new
  end

  # GET /abcaps/1/edit
  def edit
  end

  # POST /abcaps
  # POST /abcaps.json
  def create
    @abcap = Abcap.new(abcap_params)

    respond_to do |format|
      if @abcap.save
        format.html { redirect_to @abcap, notice: 'Abcap was successfully created.' }
        format.json { render :show, status: :created, location: @abcap }
      else
        format.html { render :new }
        format.json { render json: @abcap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abcaps/1
  # PATCH/PUT /abcaps/1.json
  def update
    respond_to do |format|
      if @abcap.update(abcap_params)
        format.html { redirect_to @abcap, notice: 'Abcap was successfully updated.' }
        format.json { render :show, status: :ok, location: @abcap }
      else
        format.html { render :edit }
        format.json { render json: @abcap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abcaps/1
  # DELETE /abcaps/1.json
  def destroy
    @abcap.destroy
    respond_to do |format|
      format.html { redirect_to abcaps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abcap
      @abcap = Abcap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abcap_params
      params.require(:abcap).permit(:name, :address)
    end
end
