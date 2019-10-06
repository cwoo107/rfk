json.extract! profile, :id, :firstname, :lastname, :sex, :birthdate, :married, :address, :address2, :city, :state, :zip, :phone, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
