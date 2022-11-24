class Item < ApplicationRecord
  has_one_attached :image
  with_options presence: true do
    validates :name
    validates :text
    validates :category_id
    validates :status_id
    validates :freight_id
    validates :prefecture_id
    validates :ship_date_id
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :user_id
    validates :image
  end
end
