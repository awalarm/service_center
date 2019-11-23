class WorkingsController < ApplicationController
  before_action :set_working, only: [:show, :edit, :update, :destroy]

  # GET /workings
  # GET /workings.json
  def index
    @workings = Working.all
  end

  # GET /workings/1
  # GET /workings/1.json
  def show
  end

  # GET /workings/new
  def new
    @working = Working.new
  end

  # GET /workings/1/edit
  def edit
  end

  # POST /workings
  # POST /workings.json
  def create
    @working = Working.new(working_params)

    respond_to do |format|
      if @working.save
        format.html { redirect_to @working, notice: 'Working was successfully created.' }
        format.json { render :show, status: :created, location: @working }
      else
        format.html { render :new }
        format.json { render json: @working.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workings/1
  # PATCH/PUT /workings/1.json
  def update
    respond_to do |format|
      if @working.update(working_params)
        format.html { redirect_to @working, notice: 'Working was successfully updated.' }
        format.json { render :show, status: :ok, location: @working }
      else
        format.html { render :edit }
        format.json { render json: @working.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workings/1
  # DELETE /workings/1.json
  def destroy
    @working.destroy
    respond_to do |format|
      format.html { redirect_to workings_url, notice: 'Working was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working
      @working = Working.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_params
      params.require(:working).permit(:name, :email, :repair_id)
    end
end
