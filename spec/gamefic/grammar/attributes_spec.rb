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

  describe '#genderize' do
    it 'selects the default phrase' do
      object.gender = :male
      pronoun = object.genderize('is', they: 'are')
      expect(pronoun).to eq('is')
    end

    it 'selects another phrase' do
      object.gender = :other
      pronoun = object.genderize('is', they: 'are')
      expect(pronoun).to eq('are')
    end
  end
end
