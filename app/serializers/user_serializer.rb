class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :username, :role, :created_at, :updated_at, :last_login
end
