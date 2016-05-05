
class TwoMultiplesToLimit

  def run(first_multiple, second_multiple, limit)

    three_to_one_thousand = multiples_to_limit first_multiple, limit
    five_to_one_thousand = multiples_to_limit second_multiple, limit

    three_to_one_thousand.concat(five_to_one_thousand).uniq.reduce(:+)
  end

  private

  def multiples_to_limit(multiple, limit)
    collection = []
    current = multiple

    until current >= limit do
      collection.push current
      current += multiple
    end

    return collection
  end
end

