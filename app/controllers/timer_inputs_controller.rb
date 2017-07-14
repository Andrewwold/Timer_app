class TimerInputsController < ApplicationController
  before_action :set_timer_input, only: [:show, :edit, :update, :destroy]

  # GET /timer_inputs
  # GET /timer_inputs.json
  def index
    @timer_inputs = TimerInput.all
  end

  # GET /timer_inputs/1
  # GET /timer_inputs/1.json
  def show
    @timer1 = @timer_input.set_timer 
  end

  # GET /timer_inputs/new
  def new
    @timer_input = TimerInput.new
  end

  # GET /timer_inputs/1/edit
  def edit
  end

  # POST /timer_inputs
  # POST /timer_inputs.json
  def create
    @timer_input = TimerInput.new(timer_input_params)

    respond_to do |format|
      if @timer_input.save
        format.html { redirect_to @timer_input, notice: 'Timer input was successfully created.' }
        format.json { render :show, status: :created, location: @timer_input }
      else
        format.html { render :new }
        format.json { render json: @timer_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timer_inputs/1
  # PATCH/PUT /timer_inputs/1.json
  def update
    respond_to do |format|
      if @timer_input.update(timer_input_params)
        format.html { redirect_to @timer_input, notice: 'Timer input was successfully updated.' }
        format.json { render :show, status: :ok, location: @timer_input }
      else
        format.html { render :edit }
        format.json { render json: @timer_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timer_inputs/1
  # DELETE /timer_inputs/1.json
  def destroy
    @timer_input.destroy
    respond_to do |format|
      format.html { redirect_to timer_inputs_url, notice: 'Timer input was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timer_input
      @timer_input = TimerInput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timer_input_params
      params.require(:timer_input).permit(:title, :set_timer)
    end
end
