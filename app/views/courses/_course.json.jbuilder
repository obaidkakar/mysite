json.extract! course, :id, :Course_name, :CS_duration, :created_at, :updated_at
json.url course_url(course, format: :json)