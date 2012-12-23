class Car < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :modification, :package_bundle, :status, :vin
end
