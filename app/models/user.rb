class User < ActiveRecord::Base

	has_many(
		:submitted_urls,
		class_name: "ShortenedUrl",
		foreign_key: "submitter_id",
		primary_key: "id"
	) 
	has_many(
		:visits,
		class_name: :Visit,
		foreign_key: :visitor_id,
		primary_key: :id
	)

	has_many(
		:visited_urls, 
		Proc.new { distinct },
		through: :visits
	)

end