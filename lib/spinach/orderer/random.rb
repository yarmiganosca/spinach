module Spinach
  class Orderer
    class Random < Orderer
      # Initializes the orderer
      #
      # @param [Hash] options
      #
      # @option options [Integer] :seed
      #   A positive integer seed to use for randomization.
      #
      # @api public
      def initialize(options = {})
        @seed = options.fetch(:seed) { rand(0xFFFF) } # it's what rspec uses
      end

      # Output the randomization seed in the report summary.
      #
      # @param [IO] out
      #   Output buffer for report.
      #
      # @api public
      def append_to_summary(out)
        out.puts("Randomized with seed #{@seed}\n\n")
      end
    end
  end
end
