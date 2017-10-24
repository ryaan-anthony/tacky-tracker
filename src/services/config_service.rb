module Tacky
  class ConfigService
    attr_accessor :config
    def initialize(filename)
      @config = {}
      File.foreach(filename).with_index do |line, line_num|
        parts = line.split('=')
        config[parts[0].to_sym] = parts[1]
      end
    end
    def [](key)
      config[key]
    end
  end
end