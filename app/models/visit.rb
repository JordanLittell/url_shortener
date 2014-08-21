class Visit < ActiveRecord::Base
	def self.record_visit!(user, shortened_url)
		Visit.create!(:visitor_id => user.id, :short_url_id => shortened_url.id )
	end

	belongs_to(
		:visitors,
		class_name: "User",
		foreign_key: "visitor_id",
		primary_key: "id"
	)

	belongs_to(
		:visited_url,
		class_name: "ShortenedUrl",
		foreign_key: "short_url_id",
		primary_key: "id"
	)
end