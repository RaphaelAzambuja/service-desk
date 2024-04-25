class CallsController < ApplicationController
  before_action :set_call, only: %i[ show update destroy ]

  # GET /calls
  def index
    @calls = Call.all

    render json: @calls
  end

  # GET /calls/1
  def show
    render json: @call
  end

  # POST /calls
  def create
    @call = Call.new(call_params)

    if @call.save
      render json: @call, status: :created, location: @call
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calls/1
  def update
    if @call.update(call_params)
      render json: @call
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calls/1
  def destroy
    @call.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call
      @call = Call.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def call_params
      params.require(:call).permit(:opened_by_user_id, :assigned_user_id, :priority, :status, :call_type, :service_level, :description, :contact_number, :conclusion_description, :rating, :rating_description)
    end
end
