# Liquid Utils

require 'time'

module Buckygem
  module LiquidUtilsExt
    # This code comes from Liquid, commit 27c6b8074a3c1f54179d62c97d8bef53700eb5a2
    # This code was not available in a released version, just in master, so...
    def self.to_date(obj)
      return obj if obj.respond_to?(:strftime)

      if obj.is_a?(String)
        return nil if obj.empty?
        obj = obj.downcase
      end

      case obj
      when 'now'.freeze, 'today'.freeze
        Time.now
      when /\A\d+\z/, Integer
        Time.at(obj.to_i)
      when String
        Time.parse(obj)
      end
    rescue ::ArgumentError
      nil
    end
  end
end