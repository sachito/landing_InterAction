class TableEmail < ActiveRecord::Migration
  def change
  	create_table :beta_subscribers
  	add_column :beta_subscribers, :email_adress, :string
  end
end
