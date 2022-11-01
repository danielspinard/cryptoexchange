module Cryptoexchange::Exchanges
  module Klob
    class Market < Cryptoexchange::Models::Market
      NAME = 'klob'
      API_URL = 'https://app.klob.com.br/api'

      def self.trade_page_url(args={})
        'https://app.klob.com.br/market/#{args[:base].upcase}-#{args[:target].upcase}'
      end
    end
  end
end
