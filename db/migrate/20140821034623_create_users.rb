class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
    	t.string :email, :null => false
    	t.timestamps
    end
    add_index :users, :email, :name => 'user_email_id'
  end


end
