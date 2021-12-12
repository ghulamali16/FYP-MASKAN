class CreatePaymentPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_plans do |t|
      t.integer :down_payment
      t.integer :total_amount
      t.integer :months
      t.integer :balloon_payment
      t.integer :balloon_payment_frequency
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
