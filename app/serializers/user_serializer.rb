class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :state, :user_complaints

  # has_many :complaints
  has_many :comments

  # def user_complaints
  #   object.complaints.map do |complaint|
  #     ComplaintSerializer.new(complaint, only: [:id, :title, :description])
  #   end
  # end

  def user_complaints
    object.complaints.collect do |complaint|
      {
        id: complaint.id,
        title: complaint.title,
        description: complaint.description
      }
    end
  end

  # puts object

end
