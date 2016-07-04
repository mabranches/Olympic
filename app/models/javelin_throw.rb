class JavelinThrow < Competition
  MAX_SCORES = 3
  UNITY = 'm'.freeze
  def rank
    scores.includes(:athlete).group(:athlete_id)
          .order('max(scores.value) desc', 'athletes.age desc', 'athletes.name asc')
  end
end
