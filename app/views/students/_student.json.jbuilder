json.extract! student, :id, :St_name, :F_name, :Gender, :Address, :Cell, :Local, :CNIC, :created_at, :updated_at
json.url student_url(student, format: :json)