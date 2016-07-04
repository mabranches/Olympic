class Score < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :competition
  validates :value, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :athlete, presence: true
  validates :competition, presence: true
  validate :athlete_scores_number
  validate :competition_status

  def athlete_scores_number
    return unless new_record?
    return unless competition && athlete
    if competition.max_scores < athlete.scores.where(competition_id: competition.id).count + 1
      errors.add(:competition,
        I18n.t('score.beyond_allowed_amount_limit', count: competition.max_scores))
    end
  end

  def competition_status
    return unless competition
    if competition.finished?
      errors.add(:competition,
        I18n.t('score.competition_finished'))
    end
  end
end
