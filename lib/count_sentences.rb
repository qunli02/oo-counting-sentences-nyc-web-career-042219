
require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
      array = []
      self.split(".").each do |two|
        array << two.split("?")
      end
      array.flatten!
      answer = []
      array.each do |two|
        answer << two.split("!")
      end
    answer.flatten!
    answer.delete("")
    answer.length
  end
end
