class Biography < ApplicationRecord
  belongs_to :user
  has_rich_text :work_focus
  has_rich_text :joining_umich_story
end
