json.extract! payement, :id, :Ammount, :Discount, :Total_fee, :Remaining_fee, :Pay_date, :student_id, :created_at, :updated_at
json.url payement_url(payement, format: :json)