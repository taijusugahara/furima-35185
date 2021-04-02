class Item < ApplicationRecord
  belongs_to :user
  has_one :order
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :item_status
  belongs_to :derivery_way
  belongs_to :prefecture
  belongs_to :derivery_day
  has_one_attached :image
  with_options presence: true do
    validates :name, :explanation, :image
    with_options numericality: { other_than: 1 } do
      validates :category_id, :item_status_id, :derivery_way_id, :prefecture_id, :derivery_day_id
      with_options numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 } do
        validates :price
      end
    end
  end
end
