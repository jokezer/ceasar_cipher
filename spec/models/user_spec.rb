require "rails_helper"

RSpec.describe User, :type => :model do
  describe 'Associations' do
    it{ is_expected.to have_one(:message) }
  end

  describe 'Validations' do
    it{ is_expected.to validate_presence_of(:name) }
  end

  describe '#url_alias' do
    context 'new user' do
      subject { described_class.new(name: 'Test User', url_alias: nil) }
      before{ subject.save }

      it 'sets url_alias' do
        expect(subject.url_alias).to be_present
      end
    end

    context 'property is blank' do
      subject { described_class.create(name: 'Test User') }

      it 'does not change property' do
        expect{ subject.save }.not_to change{ subject.url_alias }
      end
    end
  end
end
