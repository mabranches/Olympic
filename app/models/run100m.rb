class Run100m < Competition
  MAX_SCORES = 1
  UNITY = 's'.freeze
  def rank
    scores.includes(:athlete).group(:athlete_id)
          .order('min(scores.value) asc', 'athletes.age desc', 'athletes.name asc')
  end
end
