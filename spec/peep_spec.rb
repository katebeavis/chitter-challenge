require 'support/test_helper'
require 'spec_helper'

describe Peep do
  subject { described_class }
  context 'creation and deletion of peeps' do
    it 'can be created' do
      expect(subject.count).to eq(0)
      peep_creation
      expect(subject.count).to eq(1)
    end

    it 'is displayed on the page' do
      peep_creation
      expect(subject.first.message).to eq('Hello World!')
    end

    it 'can be destroyed' do
      peep_creation
      expect(subject.count).to eq(1)
      subject.destroy
      expect(subject.count).to eq(0)
    end
  end
end
