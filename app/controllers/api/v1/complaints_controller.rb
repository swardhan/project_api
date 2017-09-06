class Api::V1::ComplaintsController < ApiController
  before_action :set_complaint, only: [:show, :update, :destroy]

  # GET /complaints
  def index
    @complaints = Complaint.all

    render json: @complaints
  end

  # GET /complaints/1
  def show
    # byebug
    render json: @complaint
  end

  # POST /complaints
  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      render json: @complaint, status: :created#, location: api_v1_complaint_path(@complaint)
    else
      render json: @complaint.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /complaints/1
  def update
    if @complaint.update(complaint_params)
      render json: @complaint
    else
      render json: @complaint.errors, status: :unprocessable_entity
    end
  end

  # DELETE /complaints/1
  def destroy
    @complaint.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def complaint_params
      params.require(:complaint).permit(:title, :description)
    end
end
