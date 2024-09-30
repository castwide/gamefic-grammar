RSpec.describe Gamefic::Grammar::Pronoun do
  let(:entity) { Object.new.extend(Gamefic::Grammar::Attributes) }

  it 'selects male subjective' do
    entity.gender = :male
    expect(Gamefic::Grammar::Pronoun.subjective(entity)).to eq('he')
    expect(Gamefic::Grammar::Pronoun.subjective_(entity)).to eq('He')
  end

  it 'selects male objective' do
    entity.gender = :male
    expect(Gamefic::Grammar::Pronoun.objective(entity)).to eq('him')
    expect(Gamefic::Grammar::Pronoun.objective_(entity)).to eq('Him')
  end

  it 'selects female subjective' do
    entity.gender = :female
    expect(Gamefic::Grammar::Pronoun.subjective(entity)).to eq('she')
    expect(Gamefic::Grammar::Pronoun.subjective_(entity)).to eq('She')
  end

  it 'selects female objective' do
    entity.gender = :female
    expect(Gamefic::Grammar::Pronoun.objective(entity)).to eq('her')
    expect(Gamefic::Grammar::Pronoun.objective_(entity)).to eq('Her')
  end

  it 'selects male possessive' do
    entity.gender = :male
    expect(Gamefic::Grammar::Pronoun.possessive(entity)).to eq('his')
    expect(Gamefic::Grammar::Pronoun.possessive_(entity)).to eq('His')
  end

  it 'selects female possessive' do
    entity.gender = :female
    expect(Gamefic::Grammar::Pronoun.possessive(entity)).to eq('her')
    expect(Gamefic::Grammar::Pronoun.possessive_(entity)).to eq('Her')
  end

  it 'selects male reflexive' do
    entity.gender = :male
    expect(Gamefic::Grammar::Pronoun.reflexive(entity)).to eq('himself')
    expect(Gamefic::Grammar::Pronoun.reflexive_(entity)).to eq('Himself')
  end

  it 'selects female reflexive' do
    entity.gender = :female
    expect(Gamefic::Grammar::Pronoun.reflexive(entity)).to eq('herself')
    expect(Gamefic::Grammar::Pronoun.reflexive_(entity)).to eq('Herself')
  end
end
