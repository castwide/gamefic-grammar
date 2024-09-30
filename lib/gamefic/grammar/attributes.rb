# frozen_string_literal: true

module Gamefic
  module Grammar
    # A collection of attributes that enable grammar features for entities, such
    # as selecting their correct pronouns.
    #
    module Attributes
      # @see #gender
      attr_writer :gender

      # @see #plural?
      attr_writer :plural

      # The gender of the object. Supported values are :male, :female, :neutral,
      # and :other. Use :neutral for objects that don't have a gender (i.e.,
      # "it"). Use :other for people or characters that have an unspecified or
      # non-binary gender (i.e., "they").
      #
      # @return [Symbol]
      def gender
        @gender ||= :neutral
      end

      # True if the object should be referred to in the plural, e.g., "they"
      # instead of "it."
      # @return [Boolean]
      #
      def plural?
        @plural ||= false
      end

      # For now, the object's person is always assumed to be third
      # (he/she/it/they). A future version of this library might support first
      # (I/me) and second (you).
      def person
        3
      end

      # @param singular_text [String]
      # @param plural_text [String]
      # @return [String]
      def maybe_plural(singular_text, plural_text = "#{singular_text}s")
        plural? ? plural_text : singular_text
      end

      def objective
        Pronoun.objective self
      end
      alias him objective
      alias them objective

      def objective_
        Pronoun.objective_ self
      end
      alias him_ objective_
      alias them_ objective_
      alias Him objective_
      alias Them objective_

      def subjective
        Pronoun.subjective self
      end
      alias he subjective
      alias she subjective
      alias they subjective

      def subjective_
        Pronoun.subjective_ self
      end
      alias he_ subjective_
      alias she_ subjective_
      alias they_ subjective_
      alias He subjective_
      alias She subjective_
      alias They subjective_

      def possessive
        Pronoun.possessive self
      end
      alias his possessive
      alias their possessive
      alias its possessive

      def possessive_
        Pronoun.possessive_ self
      end
      alias his_ possessive_
      alias their_ possessive_
      alias its_ possessive_
      alias His possessive_
      alias Their possessive_
      alias Its possessive_

      def reflexive
        Pronoun.reflexive self
      end
      alias himself reflexive
      alias herself reflexive
      alias itself reflexive
      alias themselves reflexive
      alias themself reflexive

      def reflexive_
        Pronoun.reflexive_ self
      end
      alias himself_ reflexive_
      alias herself_ reflexive_
      alias itself_ reflexive_
      alias themselves_ reflexive_
      alias themself_ reflexive_
      alias Himself reflexive_
      alias Herself reflexive_
      alias Itself reflexive_
      alias Themselves reflexive_
      alias Themself reflexive_
    end
  end
end
