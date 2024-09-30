# frozen_string_literal: true

require 'gamefic'

module Gamefic
  module Grammar
    require 'gamefic/grammar/version'
    require 'gamefic/grammar/attributes'
    require 'gamefic/grammar/pronoun'
  end
end

module Gamefic
  class Entity
    include Grammar::Attributes
  end
end
