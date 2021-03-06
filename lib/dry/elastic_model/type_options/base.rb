# frozen_string_literal: true

module Dry
  module ElasticModel
    module TypeOptions
      class Base < ::Dry::Struct
        schema schema.strict

        def to_h
          attributes
        end
      end
    end
  end
end
