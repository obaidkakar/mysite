class StudntsController < ApplicationController
  before_action :set_studnt, only: [:show, :edit, :update, :destroy]

  # GET /studnts
  # GET /studnts.json
  def index
    @studnts = Studnt.all
  end

  # GET /studnts/1
  # GET /studnts/1.json
  def show
  end

  # GET /studnts/new
  def new
    @studnt = Studnt.new
  end

  # GET /studnts/1/edit
  def edit
  end

  # POST /studnts
  # POST /studnts.json
  def create
    @studnt = Studnt.new(studnt_params)

    respond_to do |format|
      if @studnt.save
        format.html { redirect_to @studnt, notice: 'Studnt was successfully created.' }
        format.json { render :show, status: :created, location: @studnt }
      else
        format.html { render :new }
        format.json { render json: @studnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studnts/1
  # PATCH/PUT /studnts/1.json
  def update
    respond_to do |format|
      if @studnt.update(studnt_params)
        format.html { redirect_to @studnt, notice: 'Studnt was successfully updated.' }
        format.json { render :show, status: :ok, location: @studnt }
      else
        format.html { render :edit }
        format.json { render json: @studnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnts/1
  # DELETE /studnts/1.json
  def destroy
    @studnt.destroy
    respond_to do |format|
      format.html { redirect_to studnts_url, notice: 'Studnt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studnt
      @studnt = Studnt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studnt_params
      params.require(:studnt).permit(:St_name, :F_name, :Gender, :Address, :Cell#, :Local, :CNIC)
    end
end
