class Athlete < ActiveRecord::Base
  enum sex: [:m, :f]
  validates :name, presence: true, uniqueness: true
  validates :sex, presence: true
  validates :age, presence: true
  has_many :scores
  has_many :competitions, -> { distinct }, through: :scores
end
