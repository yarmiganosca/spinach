module Spinach
  class Orderer
    # The Default orderer does not intentionally order the test run.
    # Generally, this has been observed to result in an order that's stable
    # between runs, but machine-specific. So, you and your collaborators will
    # each see a stable, but different, order. No clue why, but that's what
    # I've observed.
    class Default < Orderer
    end
  end
end
