# frozen_string_literal: true

require_relative '../HW03/ihar_shkuryn_hw_03_t_01'

RSpec.describe Homework3 do
  let(:obj) { described_class.new }

  context 'when log is a nil' do
    let(:log) { nil }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end

  context 'when log is empty string' do
    let(:log) { '' }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end

  context 'when log has keyword in upper case' do
    let(:log) { 'ERROR' }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end

  context 'when has keyword but case insensitive' do
    let(:log) { 'Error' }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end

  context 'when got array in params' do
    let(:log) { ['error']  }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end

  context 'when boolean in params' do
    let(:log) { true }

    it 'output is a empty' do
      expect(obj.task1(log)).to eq('')
    end
  end
end
