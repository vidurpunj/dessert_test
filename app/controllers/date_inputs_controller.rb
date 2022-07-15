class DateInputsController < ApplicationController
  before_action :set_date_input, only: %i[ show edit update destroy ]

  # GET /date_inputs or /date_inputs.json
  def index
    @date_inputs = DateInput.all
  end

  # GET /date_inputs/1 or /date_inputs/1.json
  def show
  end

  # GET /date_inputs/new
  def new
    @date_input = DateInput.new
  end

  # GET /date_inputs/1/edit
  def edit
  end

  # POST /date_inputs or /date_inputs.json
  def create
    sample = JSON.parse(params[:date_input][:sample])
    params[:date_input][:sample] = sample["time"]
    @date_input = DateInput.new(date_input_params)

    respond_to do |format|
      if @date_input.save
        format.html { redirect_to date_input_url(@date_input), notice: "Date input was successfully created." }
        format.json { render :show, status: :created, location: @date_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_inputs/1 or /date_inputs/1.json
  def update
    respond_to do |format|
      if @date_input.update(date_input_params)
        format.html { redirect_to date_input_url(@date_input), notice: "Date input was successfully updated." }
        format.json { render :show, status: :ok, location: @date_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_inputs/1 or /date_inputs/1.json
  def destroy
    @date_input.destroy

    respond_to do |format|
      format.html { redirect_to date_inputs_url, notice: "Date input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_input
      @date_input = DateInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_input_params
      params.require(:date_input).permit(:sample)
    end
end
