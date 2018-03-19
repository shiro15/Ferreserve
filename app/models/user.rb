class User < ActiveRecord::Base
	include EmailAddressChecker
	
	has_many :reservations

	validates :name, presence: true
	validates :address, presence: true
	validate :check_email
	validates :pass, presence: true

	# attr_accessor :pass


	# def password=(val)
	# 	if val.present?
	# 		self.hashed_password = BCrypt::Password.create(val)
	# 	end
	# 	@password = val
	# end

	private
	def check_email
		if mail.present?
			errors.add(:mail, :invalid) unless well_formed_as_email_address(mail)
		end
	end

	class << self
		def authenticate(email, password)
			user = find_by(mail: email)
			if user && user.pass.present? && user.pass == password
				user
			else
				nil
			end
		end
	end
end