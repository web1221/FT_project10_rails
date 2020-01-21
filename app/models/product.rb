class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :usa_product, -> { where(country_of_origin: "United States") }

  def self.most_reviewed
    self.all.each do |product|
      reviews = []
      reviews.push(product.reviews)
    end
    reviews
  end

  before_save(:titleize_product)

  private
  def titleize_product
    self.name = self.name.titleize
  end
end
