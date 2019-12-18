module Strava
  module Errors
    class Fault < ::Faraday::ClientError
      def message
        response[:body]['message'] || super
      end

      def headers
        response[:headers]
      end

      def errors
        response[:body]['errors']
      end

      def status
        response[:body]['status']
      end

      def error
        response[:body]['error']
      end
    end
  end
end
