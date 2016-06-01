require "rails_helper"

RSpec.describe Message, :type => :model do
  describe 'Associations' do
    it{ is_expected.to belong_to(:user) }
  end

  describe 'Validations' do
    it{ is_expected.to validate_presence_of(:user) }
  end

  describe '#encoded_content' do
    context 'content present' do
      subject { described_class.new(content: 'content') }

      it 'gets value from CeasarCipher service' do
        expect_any_instance_of(CeasarCipher).to receive(:encode)
        subject.encoded_content
      end
    end

    context 'content present' do
      subject { described_class.new(content: nil) }

      it 'returns false' do
        expect(subject.encoded_content).to be_falsey
      end
    end
  end
end
