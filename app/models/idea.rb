class Idea < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :idea_requests, :dependent => :destroy
  has_many :request, :through => :idea_requests, :dependent => :destroy
end
