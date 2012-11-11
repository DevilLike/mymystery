class IdeaRequest < ActiveRecord::Base
  attr_accessible :idea_id, :request_id
  belongs_to :request
  belongs_to :idea
end