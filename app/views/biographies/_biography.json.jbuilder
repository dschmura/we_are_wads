json.extract! biography, :id, :title, :work_focus, :joining_umich_story, :user_id, :created_at, :updated_at
json.url biography_url(biography, format: :json)
json.work_focus biography.work_focus.to_s
json.joining_umich_story biography.joining_umich_story.to_s
