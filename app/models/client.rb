class Client < ApplicationRecord
  validates :email, presence: true, email: true
  validates :name, length: { maximum: 10 }, presence: true
  validates :last_name, length: { maximum: 15 }, presence: true
  enum block: { No: 0, Yes: 1}
end
