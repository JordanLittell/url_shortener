class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
    	t.integer :visitor_id, null: false
    	t.integer :short_url_id, null: false
    end
    add_index :visits, :visitor_id, :name => 'visitor_id_ix'
    add_index :visits, :short_url_id, :name => 'short_url_id_ix'
  end
end
