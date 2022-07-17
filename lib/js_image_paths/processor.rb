module JsImagePaths
  module Processor
    def self.call(input)
      JsImagePaths::Generator.context = input[:environment].context_class.new(input) if input[:name] == 'js_image_paths'

      {data: input[:data]}
    end
  end
end
