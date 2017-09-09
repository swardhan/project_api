class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email

  has_many :complaints
  has_many :comments

  # puts object

end
