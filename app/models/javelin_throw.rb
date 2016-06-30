class JavelinThrow < Competition
  MAX_SCORES = 3
  UNITY = 'm'
  def rank
    scores.includes(:athlete).group(:athlete_id).
      order('max(scores.value)')
  end
end
