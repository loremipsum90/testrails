json.extract! jobposter, :id, :first_name, :last_name, :job_nature, :phone, :email, :created_at, :updated_at
json.url jobposter_url(jobposter, format: :json)
