class Item < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :items_status
  belongs_to :derivery_way
  belongs_to :prefecture
  belongs_to :derivery_day
  has_one_attached :image
  validates :name, :explanation, :image, presence: true
  validates :genre_id, :items_status_id, :derivery_way, :prefecture, :derivery_day, numericality: { other_than: 1 } 
  
end
 