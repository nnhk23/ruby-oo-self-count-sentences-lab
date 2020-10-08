require 'pry'

class String

  @@count = []

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    @@count = self.split.select do |sentence|
      sentence.sentence? || sentence.question? || sentence.exclamation? == true
    end
    @@count.count
  end
  
  
end
# greeting = String.new("This is a string! It has three sentences. Right?")
# greeting.count_sentences
# binding.pry
