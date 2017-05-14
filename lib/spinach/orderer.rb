module Spinach
  # The Orderer orders the features and scenarios in a run.
  #
  class Orderer
    # Initializes the orderer
    #
    # @param [Hash] options
    #
    # @api public
    def initialize(options = {})
    end

    # Appends any necessary report output (by default does nothing).
    #
    # @param [IO] out
    #   Output buffer for report.
    #
    # @api public
    def append_to_summary(out)
    end
  end
end

require_relative 'orderer/default'
require_relative 'orderer/random'
