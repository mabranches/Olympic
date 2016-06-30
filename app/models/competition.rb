class Competition < ActiveRecord::Base
  include ActiveModel::Serialization
  enum status: [:running, :finished]
  validates :name, presence: true
  has_many :scores
  has_many :athletes, -> {distinct}, through: :scores

  def unity
    UNITY
  end

  def self.types
    id = 0
    @types ||= Competition.descendants.collect do |d|
      id += 1
      CompetitionType.new(id, d.name)
    end
  end
end
