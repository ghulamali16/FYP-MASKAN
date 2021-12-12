json.extract! payment_plan, :id, :down_payment, :total_amount, :months, :balloon_payment, :balloon_payment_frequency, :property_id, :created_at, :updated_at
json.url payment_plan_url(payment_plan, format: :json)
