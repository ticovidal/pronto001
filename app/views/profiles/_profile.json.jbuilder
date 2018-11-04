json.extract! profile, :id, :name, :email, :cpf, :phone, :cellphone, :street, :number, :compl, :neighbor, :city, :country, :company, :social, :cnpj, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
