module Tacky
  class TrackerService
    def self.call(config)
      puts config[:google_api_key]
    end
  end
end