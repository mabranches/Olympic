class Run100m < Competition
  MAX_SCORES = 1
  UNITY = 'S'
  def rank
    scores.includes(:athlete).group(:athlete_id).
      order('min(scores.value)')
  end
end
