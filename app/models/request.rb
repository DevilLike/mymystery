class Request < ActiveRecord::Base
  attr_accessible :brand, :color, :comment, :model, :modification, :name, :package_bundle, :patronymic, :phone, :surname
end