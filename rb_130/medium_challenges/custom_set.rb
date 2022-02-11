class CustomSet
  def initialize(array=[])
    set = []
    array.each do |element|
      set << element unless set.include?(element)
    end
    @set = set
  end

  def add(value)
    @set << value unless @set.include?(value)
    CustomSet.new(@set)
  end

  def empty?
    @set.empty?
  end

  def contains?(element)
    @set.include?(element)
  end

  def subset?(superset)
    @set.all? { |set_member| superset.contains?(set_member) }
  end

  def disjoint?(other_set)
    !@set.any? { |set_member| other_set.contains?(set_member) }
  end

  def intersection(other_set)
    new_set = []
    @set.each do |set_member|
      new_set << set_member if other_set.contains?(set_member)
    end
    CustomSet.new(new_set)
  end

  def difference(other_set)
    new_set = []
    @set.each do |set_member|
      new_set << set_member unless other_set.contains?(set_member)
    end
    CustomSet.new(new_set)
  end

  def union(other_set)
    CustomSet.new(@set + other_set.set)
  end

  def eql?(other_set)
    @set.sort == other_set.set.sort
  end

  def ==(other_set)
    eql?(other_set)
  end

  protected

  attr_reader :set
end