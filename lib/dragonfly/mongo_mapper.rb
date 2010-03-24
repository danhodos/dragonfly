require 'mongo_mapper'

module Dragonfly

  module MongoMapper
    
    def self.included(klass)
      unless klass.include?(Dragonfly::ActiveRecordExtensions::InstanceMethods)
        klass.extend(ClassMethods)
        klass.class_eval{ include Dragonfly::ActiveRecordExtensions::InstanceMethods }
      end
    end

  end
end