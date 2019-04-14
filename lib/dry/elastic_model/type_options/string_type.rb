module Dry
  module ElasticModel
    module TypeOptions
      class StringType < Dry::Struct
        input input.strict

        attribute :boost, Types::Float.meta(omittable: true)
        attribute :eager_global_ordinals, Types::Bool.meta(omittable: true)
        attribute :fields, Types::Hash.meta(omittable: true)
        attribute :include_in_all, Types::Bool.meta(omittable: true)
        attribute :index, Types::Bool.meta(omittable: true)
        # TODO: Allow https://www.elastic.co/guide/en/elasticsearch/reference/5.6/index-options.html
        attribute :index_options, Types::Hash.meta(omittable: true)

        attribute :norms, Types::Bool.meta(omittable: true)
        attribute :store, Types::Bool.meta(omittable: true)
        attribute :similarity, (Types::Value('BM25') | Types::Value('classic') | Types::Value('boolean')).meta(omittable: true)

        def to_h
          attributes
        end
      end
    end
  end
end
