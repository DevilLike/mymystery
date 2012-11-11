class LiteratureRequest < ActiveRecord::Base
  attr_accessible :literature_id, :request_id
  belongs_to :request
  belongs_to :literature
end
