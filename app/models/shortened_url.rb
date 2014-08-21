class ShortenedUrl < ActiveRecord::Base
	validates :submitter_id, uniqueness: true, presence: true 

	def self.random_code
		url_name = SecureRandom::urlsafe_base64
		return url_name unless ShortenedUrl.exists?(:short_url => url_name.to_s)
		random_code
	end

	def self.create_for_user_and_long_url!(user, long_url)
		ShortenedUrl.create!(:submitter_id => user.id, :short_url => random_code, :long_url => long_url)
	end

	belongs_to(
		:submitter,
		class_name: "User",
		foreign_key: "submitter_id",
		primary_key: "id"
	)
end