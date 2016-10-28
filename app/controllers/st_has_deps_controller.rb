class StHasDepsController < ApplicationController
  before_action :set_st_has_dep, only: [:show, :edit, :update, :destroy]

  # GET /st_has_deps
  # GET /st_has_deps.json
  def index
    @st_has_deps = StHasDep.all
  end

  # GET /st_has_deps/1
  # GET /st_has_deps/1.json
  def show
  end

  # GET /st_has_deps/new
  def new
    @st_has_dep = StHasDep.new
  end

  # GET /st_has_deps/1/edit
  def edit
  end

  # POST /st_has_deps
  # POST /st_has_deps.json
  def create
    @st_has_dep = StHasDep.new(st_has_dep_params)

    respond_to do |format|
      if @st_has_dep.save
        format.html { redirect_to @st_has_dep, notice: 'St has dep was successfully created.' }
        format.json { render :show, status: :created, location: @st_has_dep }
      else
        format.html { render :new }
        format.json { render json: @st_has_dep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_has_deps/1
  # PATCH/PUT /st_has_deps/1.json
  def update
    respond_to do |format|
      if @st_has_dep.update(st_has_dep_params)
        format.html { redirect_to @st_has_dep, notice: 'St has dep was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_has_dep }
      else
        format.html { render :edit }
        format.json { render json: @st_has_dep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_has_deps/1
  # DELETE /st_has_deps/1.json
  def destroy
    @st_has_dep.destroy
    respond_to do |format|
      format.html { redirect_to st_has_deps_url, notice: 'St has dep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_has_dep
      @st_has_dep = StHasDep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_has_dep_params
      params.require(:st_has_dep).permit(:department_id, :student_id)
    end
end
