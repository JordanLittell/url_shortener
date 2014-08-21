class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
    	t.string :short_url 
    	t.string :long_url
    	t.integer :submitter_id 
    end
    add_index :shortened_urls, :submitter_id,  :name => 'submitter_id_ix'
    add_index :shortened_urls, :short_url, :name => 'short_url_id'
  end
end
