class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :state

  has_many :complaints
  has_many :comments

  # puts object

end
