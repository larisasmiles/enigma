class Encrypt

  def initialize(key = KeyGenerator.new)
    @key = key

  end

  def generate_key
    result = []
    @key.split('').each_cons(2) do |pair|
      result << pair.join.to_i
    end
    result
  end

end
