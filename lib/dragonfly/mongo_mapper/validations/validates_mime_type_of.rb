module Dragonfly
  module MongoMapper
    module Validations
      class ValidatesMimeTypeOf < Validatable::ValidationBase
        required_option :within
    
        def valid?(instance)
          
          value = instance.send(attribute).nil? ? nil : instance.send(attribute).mime_type          
          
          return true if allow_nil && value.nil?
          return true if allow_blank && value.blank?
      
          within.include?(value)
        end
    
        def message(instance)
          super || "is not in the list"
        end
      end
    end
  end
end