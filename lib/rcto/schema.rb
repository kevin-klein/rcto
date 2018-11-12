require 'rcto/schema/field'

module Rcto
  module Schema
    def self.included(base)
      base.extend ClassMethods
    end
    class SchemaDefiner
      attr_reader :fields
      def initialize
        @fields = []
      end

      def field(name, type, opts={})
        @fields << Field.new(name.to_s, type, opts)
      end
    end

    module ClassMethods
      @fields = []
      @created_at_field = 'created_at'
      @updated_at_field = 'updated_at'
      @primary_key_field = 'id'
      @use_primary_key = true

      def fields
        @fields
      end

      def schema(name, &block)
        definer = SchemaDefiner.new

        definer.instance_eval(&block)

        @fields = definer.fields
      end
    end
  end
end
