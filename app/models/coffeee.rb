class Coffeee < ApplicationRecord
  has_many :reviews, inverse_of: :coffeee
  belongs_to :brand, optional: true
  accepts_nested_attributes_for :reviews
  validates :name, presence: true

  CATEGORIES = ["Arabica", "Robusta", "Liberica", "Excelsa"]
  ROASTS = ["Light", "Medium", "Dark"]
  RATING = ["Highest First", "Lowest First"]
  BODYS = ["Medium", "Mid", "Full"]
  ACIDITIES = ["Low","Medium", "High"]

  #Brand Params
  def brand_attributes=(brand_attributes)
    if brand_attributes[:name] && !brand_attributes[:name].empty?
      set_brand(brand_attributes)
    end
  end

  def set_brand(brand_attributes)
    self.brand = Brand.where(name: brand_attributes[:name]).first_or_create do |b|
      b.name = brand_attributes[:name]
      b.location = brand_attributes[:location]
    end
  end

  def self.by_name(name)
    where(:name => name)
  end

  def self.last_twelve
    last(12).reverse
  end
end
