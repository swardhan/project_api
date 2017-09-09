class Api::V1::CommentsController < ApiController

  before_action :set_complaint, only: [:create]

  def create
    byebug
    @comment = @complaint.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      render json: @complaint, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private

  def set_complaint
    @complaint = Complaint.find(params[:complaint_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
