class KeyGenerator

  # def initialize(key = "")
  #     key = key_gen
  # end

  def key_gen
    #"12345"
    result = []
    5.times do
      result << rand(0..9)
    end
    result.join
   end
end
