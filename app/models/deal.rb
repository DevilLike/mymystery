class Deal < ActiveRecord::Base
  attr_accessible :client_id, :date, :number, :user_id, :value, :vin
  validates :date, :presence => {:message => 'Date cannot be blank, Deal not saved'}
  validates :value, :presence => {:message => 'Value cannot be blank, Deal not saved'}
  after_save :set_car_status
  #before_save :check_car_status
  def set_car_status
    if Car.where(:vin => self.vin).first
      Car.where(:vin => self.vin).first.update_attributes(:status => 0)
    end
  end
end