class StageLength < ActiveRecord::Base
  attr_accessible :citation_id, :comment, :datum, :length, :stage_id, :user_id, :project_id, :mod, :approved
  belongs_to :citation
  belongs_to :stage
  belongs_to :user
  belongs_to :project
end

