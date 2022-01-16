module A
  module B; end
  module C
    module D
      p B == A::B
    end
  end
end