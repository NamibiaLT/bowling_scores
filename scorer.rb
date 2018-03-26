class Scorer
  def self.counter(scores)
    new_scores = scores.map do |score|
      score ==  '-' ? 0 : score
    end
    new_scores.sum
  end
end
