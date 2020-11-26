class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :stripe_customer_id, default: ""
      t.timestamps
    end
  end
end
