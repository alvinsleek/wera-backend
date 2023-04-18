class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :user_type
end
