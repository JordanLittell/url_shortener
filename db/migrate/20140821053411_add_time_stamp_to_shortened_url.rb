class AddTimeStampToShortenedUrl < ActiveRecord::Migration
  def change
  	add_column :shortened_urls, :created_at, :time
  end
end
