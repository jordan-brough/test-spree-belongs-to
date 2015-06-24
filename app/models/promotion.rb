class Promotion < ActiveRecord::Base
  belongs_to :order
  belongs_to :promotion_category
end
