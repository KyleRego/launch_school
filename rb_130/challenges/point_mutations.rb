class DNA
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  # input: self and another sequence (a String)
  # output: number of differences in sequence
  # algorithm: 
  # set max1 = length of dna sequence, max2 = length of other sequence
  # set index1 and index2 = 0
  # set count = 0
  #
  # if max1 > max2
  # increment index1 until sequence[index1] == sequence[index2]
  # else increment index2 until sequence[index1] == sequence[index2]
  #
  # while index1 < max1 && index2 < max2
  #   increment count if the sequences at given indices are not same nucleotide
  #   increment index1 and index2
  # return count

  def hamming_distance(other_sequence)
    max1 = sequence.length
    max2 = other_sequence.length
    index1 = 0
    index2 = 0
    count = 0

    # actually accounting for beginning offset causes one of the tests to fail
    # if max1 > max2
    #   while sequence[index1] != other_sequence[index2]
    #     index1 += 1
    #   end
    # elsif max2 > max1
    #   while sequence[index1] != other_sequence[index2]
    #     index2 += 1
    #   end
    # end

    while index1 < max1 && index2 < max2
      count += 1 if sequence[index1] != other_sequence[index2]
      index1 += 1
      index2 += 1
    end

    count
    
  end
end
