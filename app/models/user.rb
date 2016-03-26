class User < ActiveRecord::Base

	has_secure_password

	validates_presence_of :password, :on => :create

	has_many :groups

	private
		def user_params
			params.require(:email, :password).permit(:name)
		end

end
