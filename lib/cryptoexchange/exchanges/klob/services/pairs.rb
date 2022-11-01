module Cryptoexchange::Exchanges
  module Klob
    module Services
      class Pairs < Cryptoexchange::Services::Pairs
        PAIRS_URL = "#{Cryptoexchange::Exchanges::Klob::Market::API_URL}/volume"

        def fetch
          output = super
          adapt(output)
        end

        def adapt(output)
          output.map do |pair|
            base, target = pair['parName'].split("_")
            Cryptoexchange::Models::MarketPair.new(
              base:   base,
              target: target,
              market: Klob::Market::NAME
            )
          end
        end
      end
    end
  end
end
