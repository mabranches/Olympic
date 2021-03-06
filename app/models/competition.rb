class Competition < ActiveRecord::Base
  include ActiveModel::Serialization
  enum status: [:running, :finished]
  validates :name, presence: true, uniqueness: true
  has_many :scores, dependent: :destroy
  has_many :athletes, -> { distinct }, through: :scores

  def unity
    class_eval(type)::UNITY
  end

  def max_scores
    class_eval(type)::MAX_SCORES
  end

end
