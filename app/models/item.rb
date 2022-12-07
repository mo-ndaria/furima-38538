class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one    :order

  belongs_to :category
  belongs_to :status
  belongs_to :freight
  belongs_to :prefecture
  belongs_to :ship_date



  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :status_id
    validates :freight_id
    validates :prefecture_id
    validates :ship_date_id
  end 


  has_one_attached :image

  
  with_options presence: true do
    validates :name
    validates :text
    validates :category_id
    validates :status_id
    validates :freight_id
    validates :prefecture_id
    validates :ship_date_id
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :image
  end
end
