module Rcto
  module Schema
    class Field
      attr_reader :type
      attr_reader :name
      attr_reader :opts

      def initialize(name, type, opts)
        @type = type
        @name = name
        @opts = opts
      end
    end
  end
end
