require 'pry'

class String

  def sentence? 
    if self.split("").last == "."
      true
    else
      false
    end
  end

  def question?
    if self.split("").last == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self.split("").last == "!"
      true
    else
      false
    end
  end

  def count_sentences
    no_consec_punc = self.split("").chunk(&:itself).map(&:first)
    punctuation = no_consec_punc.select {|space| space =~ /[.!?]/}
    punctuation.length
  end

end

s1 = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
s1.count_sentences