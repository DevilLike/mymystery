class Literature < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :literature_requests
  has_many :requests, :through => :literature_requests
end