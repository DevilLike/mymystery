class Idea < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :idea_requests
  has_many :request, :through => :idea_requests
end
