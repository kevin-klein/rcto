module Rcto
  module Schema
    class HasMany < Field

      def initialize(name, opts)
        super(name, name, opts)
      end

      def type
        @name.classify.constantize
      end
    end
  end
end
