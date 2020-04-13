# frozen_string_literal: true

require 'spec_helper'

describe Buckygem::CSVUtils do
  describe '#csv_to_hash' do
    context 'with a header' do
      let(:csv_file_path) { 'spec/resources/sample-with-headers.csv' }

      it 'can handle a 1 value situation' do
        result = Buckygem::CSVUtils.csv_to_hash(csv_file_path, { headers: true }, 'Field2', 'Field3')
        expect(result.count).to be 3
        expect(result['value12']).to eq 'value13'
      end

      it 'can handle a 3 values situation' do
        result = Buckygem::CSVUtils.csv_to_hash(csv_file_path, { headers: true }, 'Field2', 'Field3', 'Field1', 'Field4')
        expect(result.count).to be 3

        expect(result['value12'].count).to eq 3
        expect(result['value12'][0]).to eq 'value13'
        expect(result['value12'][1]).to eq 'value11'
        expect(result['value12'][2]).to eq 'value14'
      end
    end

    context 'without a header' do
      let(:csv_file_path) { 'spec/resources/sample-without-headers.csv' }

      it 'can handle a 1 value situation' do
        result = Buckygem::CSVUtils.csv_to_hash(csv_file_path, nil, 1, 2)
        expect(result.count).to be 3

        expect(result['value12']).to eq 'value13'
      end

      it 'can handle a 3 values situation' do
        result = Buckygem::CSVUtils.csv_to_hash(csv_file_path, nil, 1, 2, 0, 3)
        expect(result.count).to be 3
        expect(result['value12'].count).to eq 3
        expect(result['value12'][0]).to eq 'value13'
        expect(result['value12'][1]).to eq 'value11'
        expect(result['value12'][2]).to eq 'value14'
      end
    end
  end
end
