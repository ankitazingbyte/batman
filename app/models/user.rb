class User < ApplicationRecord
	# Necessary to authenticate.
	attr_accessor :password
	before_save :encrypt_password
	after_create :encrypt_password
	has_many :restaurants
	validates_uniqueness_of :email
	before_create :set_auth_token

	def can_modify_user?(user_id)
		role == 'admin' || id.to_s == user_id.to_s
	end

	# This method tells us if the user is an admin or not.
	def is_admin?
		role == 'admin'
	end
  
	def self.authenticate(email, password)
		user = find_by_email(email)
		if user && user.password_digest == BCrypt::Engine.hash_secret(password, user.password_salt)
		  user
		else
		  nil
		end
	end

	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_digest = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end

	def generate_auth_token
		SecureRandom.uuid.gsub(/\-/,'')
	end

	private

	def set_auth_token
		return if token.present?
		self.token = generate_auth_token
	end
end


