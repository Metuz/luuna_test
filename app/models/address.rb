class Address < ApplicationRecord
  belongs_to :user

  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :user_id, presence: true

  delegate :name, :id, to: :user, prefix: true
end
