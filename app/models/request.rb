class Request < ActiveRecord::Base
  attr_accessible :message, :user_id
  belongs_to :user
  has_many :idea_requests, :dependent => :destroy
  has_many :ideas, :through => :idea_requests, :dependent => :destroy
end