require "rails_helper"

RSpec.describe CeasarCipher do
  describe '#encode' do
    let(:shift) { 2 }
    let(:content) { 'AbCxYZ 123' }

    subject{ described_class.new(content, shift) }

    it 'shifts all letters by shift characters' do
      expect(subject.encode).to eq('CdEzAB 123')
    end
  end
end
