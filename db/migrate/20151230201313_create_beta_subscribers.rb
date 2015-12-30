class CreateBetaSubscribers < ActiveRecord::Migration
  def change
    create_table :beta_subscribers do |t|
      t.string :email_adress

      t.timestamps null: false
    end
  end
end
