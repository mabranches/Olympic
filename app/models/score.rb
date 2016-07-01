class Score < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :competition
  validates :value, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :athlete, presence: true
  validates :competition, presence: true
  validate :athlete_scores_number
  validate :competition_status

  def athlete_scores_number
    if max_scores < athlete.scores.count + (new_record? ? 1 : 0)
      errors.add(:competition,
        I18n.t('score.beyond_allowed_amount_limit', count: max_scores))
    end
  end

  def competition_status
    if competition.status == 'finished'
      errors.add(:competition,
        I18n.t('score.competition_finished'))
    end
  end

  private
    def max_scores
      @max_scores ||= competition.class::MAX_SCORES
    end
end
