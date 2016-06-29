class Athlete < ActiveRecord::Base
  enum sex: [:m, :f]
  attr_accessor :name, :sex, :age
  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true

  has_many :scores
  has_many :competitions, ->{distinct}, through: :scores
end
