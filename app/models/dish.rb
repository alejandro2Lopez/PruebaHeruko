class Dish < ApplicationRecord
  has_one_attached :image
  enum enable: { No: 0, Yes: 1 }
  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
