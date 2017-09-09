class ComplaintSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  belongs_to :user
  # has_many :comments
  has_many :comments
  # link(:self)
end
