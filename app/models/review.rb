class Review < ApplicationRecord
  belongs_to :coffeee, inverse_of: :reviews
  validates :rating, presence: true


  def make_stars
    if self.rating == 4
      return "<img class='review-stars' src='images/star.svg'>"
    end
  end

  def to_stars
    self.rating.times {"<img class='review-stars' src='/public/images/star.svg'>"}
  end

  def self.by_favorites(favorite)
    if favorite == "Show Favorites"
      where(:favorite => true)
    end
  end

  def self.by_category(category)
    self.joins(:coffeee).where(:coffeees => {:category => category})
  end

  def self.by_roast(roast)
    self.joins(:coffeee).where(:coffeees => {:roast => roast})
  end

  def self.by_body(body)
    self.joins(:coffeee).where(:coffeees => {:body => body})
  end

  def self.by_acidity(acidity)
    self.joins(:coffeee).where(:coffeees => {:acidity => acidity})
  end

  def self.by_raitng(rating)
    self.joins(:coffeee).where(:coffeees => {:rating => rating})
  end

  def self.last_eight
    last(8).reverse
  end
end
