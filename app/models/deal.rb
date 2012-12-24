class Deal < ActiveRecord::Base
  attr_accessible :client_id, :date, :number, :user_id, :value, :vin
  belongs_to :client
  belongs_to :user
end
