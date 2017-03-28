class FinalsController < ApplicationController
  before_action :set_final, only: [:show, :edit, :update, :destroy]

  # GET /finals
  # GET /finals.json
  def index
    @finals = Final.all
  end

  # GET /finals/1
  # GET /finals/1.json
  def show
  end

  # GET /finals/new
  def new
    @final = Final.new
  end

  # GET /finals/1/edit
  def edit
  end

  # POST /finals
  # POST /finals.json
  def create
    @final = Final.new(final_params)

    respond_to do |format|
      if @final.save
        format.html { redirect_to @final, notice: 'Final was successfully created.' }
        format.json { render :show, status: :created, location: @final }
      else
        format.html { render :new }
        format.json { render json: @final.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finals/1
  # PATCH/PUT /finals/1.json
  def update
    respond_to do |format|
      if @final.update(final_params)
        format.html { redirect_to @final, notice: 'Final was successfully updated.' }
        format.json { render :show, status: :ok, location: @final }
      else
        format.html { render :edit }
        format.json { render json: @final.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finals/1
  # DELETE /finals/1.json
  def destroy
    @final.destroy
    respond_to do |format|
      format.html { redirect_to finals_url, notice: 'Final was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final
      @final = Final.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_params
      params.require(:final).permit(:venue_name, :venue_address, :venue_ownername, :approved_at, :approved_by)
    end
end
