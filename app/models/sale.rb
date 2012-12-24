class Sale < ActiveRecord::Base
  attr_accessible :brand, :color, :model, :modification, :name, :package_bundle, :patronymic, :phone, :state, :surname
end
