# frozen_string_literal: true

# Collection of CSV utilities
# TODO Could maybe be improved by: http://stackoverflow.com/questions/14199784/convert-csv-file-into-array-of-hashes
require 'csv'

module Buckygem
  class CSVUtils
    def self.csv_to_hash(csv_file_path, options, key, *values)
      res = {}
      CSV.foreach(csv_file_path, options) do |row|
        if values.count == 0
          raise 'At least 1 value is required'
        elsif values.count == 1
          res[row[key]] = row[values[0]]
        else
          dict_value = []
          values.each do |value|
            dict_value << row[value]
          end
          res[row[key]] = dict_value
        end
      end
      res
    end
  end
end
