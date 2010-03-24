module Dragonfly
  module MongoMapper
    module Validations
      
      private
      
      def validates_mime_type_of(*args)
        add_validations(args, ValidatesMimeTypeOf)
      end
    end
  end
end