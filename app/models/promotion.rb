class Promotion < ActiveRecord::Base
  belongs_to :order
  belongs_to :promotion_category

  def self.test
    promotion_category = Spree::PromotionCategory.create!(name: 'some spree promo category')
    promotion = Spree::Promotion.create!(name: 'some spree promo', promotion_category: promotion_category)
    Spree::Promotion.find(promotion.id).promotion_category
  end
end
