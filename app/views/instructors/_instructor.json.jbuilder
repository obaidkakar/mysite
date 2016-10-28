json.extract! instructor, :id, :Ins_name, :F_name, :Cell, :Email, :department_id, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)