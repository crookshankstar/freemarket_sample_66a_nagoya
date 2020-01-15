class Item < ApplicationRecord
  has_many :item_images, dependent: :destroy
  accepts_nested_attributes_for :item_images
  belongs_to :brand
  accepts_nested_attributes_for :brand
  belongs_to :category
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user

end