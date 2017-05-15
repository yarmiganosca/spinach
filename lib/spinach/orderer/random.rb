module Spinach
  class Orderer
    class Random < Orderer
      # Output the randomization seed in the report summary.
      #
      # @param [IO] out
      #   Output buffer for report.
      #
      # @api public
      def append_to_summary(out)
        out.puts("Randomized with seed #{seed}\n\n")
      end

      private

      def seed
        Spinach.config.seed
      end
    end
  end
end
