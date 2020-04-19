# frozen_string_literal: true

require 'csv'

module Buckygem
  # Collection of CSV utilities
  # TODO Could maybe be improved by: http://stackoverflow.com/questions/14199784/convert-csv-file-into-array-of-hashes
  class CSVUtils
    def self.csv_to_hash(csv_file_path, options, key, *values)
      res = {}
      CSV.foreach(csv_file_path, options) do |row|
        raise 'At least 1 value is required' if values.count.zero?

        res[row[key]] = if values.count == 1
                          row[values[0]]
                        else
                          extract_values_from_row(row, values)
                        end
      end
      res
    end

    def self.extract_values_from_row(row, values)
      dict_value = []
      values.each do |value|
        dict_value << row[value]
      end
      dict_value
    end
  end
end
