# frozen_string_literal: true

RSpec.describe Gamefic::Grammar::Attributes do
  let(:object) { Object.new.extend(Gamefic::Grammar::Attributes) }

  describe '#maybe_plural' do
    it 'returns singular text' do
      object.plural = false
      expect(object.maybe_plural('dog')).to eq('dog')
    end

    it 'returns plural text' do
      object.plural = true
      expect(object.maybe_plural('dog')).to eq('dogs')
    end

    it 'accepts custom plural text' do
      object.plural = true
      expect(object.maybe_plural('antenna', 'antennae')).to eq('antennae')
    end
  end
end
