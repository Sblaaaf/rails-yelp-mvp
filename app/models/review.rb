class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :inclusion => { :in => 0..5, :message => "Choose between 0 to 5" }
  validates :rating, :presence => { :message => "Required" }
  validates :rating, :numericality => { :message => "Type a number please" }
end
