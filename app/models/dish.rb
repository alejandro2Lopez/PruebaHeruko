class Dish < ApplicationRecord
  has_one_attached :image
  enum enable: { No: 0, Yes: 1}
end
