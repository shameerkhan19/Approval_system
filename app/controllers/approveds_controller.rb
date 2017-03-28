class ApprovedsController < ApplicationController
  before_action :set_approved, only: [:show, :edit, :update, :destroy]

  # GET /approveds
  # GET /approveds.json
  def index
    @approveds = Approved.all
  end

  # GET /approveds/1
  # GET /approveds/1.json
  def show
  end

  # GET /approveds/new
  def new
    @approved = Approved.new
  end

  # GET /approveds/1/edit
  def edit
  end

  # POST /approveds
  # POST /approveds.json
  def create
    @approved = Approved.new(approved_params)

    respond_to do |format|
      if @approved.save
        format.html { redirect_to @approved, notice: 'Approved was successfully created.' }
        format.json { render :show, status: :created, location: @approved }
      else
        format.html { render :new }
        format.json { render json: @approved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approveds/1
  # PATCH/PUT /approveds/1.json
  def update
    respond_to do |format|
      if @approved.update(approved_params)
        format.html { redirect_to @approved, notice: 'Approved was successfully updated.' }
        format.json { render :show, status: :ok, location: @approved }
      else
        format.html { render :edit }
        format.json { render json: @approved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approveds/1
  # DELETE /approveds/1.json
  def destroy
    @approved.destroy
    respond_to do |format|
      format.html { redirect_to approveds_url, notice: 'Approved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approved
      @approved = Approved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approved_params
      params.require(:approved).permit(:venue_name, :venue_address, :venue_ownername, :approved_at, :approved_by)
    end
end
