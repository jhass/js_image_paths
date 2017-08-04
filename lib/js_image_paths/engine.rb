module JsImagePaths
  class Engine < Rails::Engine

    isolate_namespace(JsImagePaths)

    initializer('js_image_paths.compile', after: 'sprockets.environment') do |application|
      sprockets_env = application.assets || Sprockets
      sprockets_env.register_preprocessor('application/javascript', :'js_image_path.compile') do |input|
        context = input[:environment].context_class.new(input)
        if context.logical_path == 'js_image_paths'
          JsImagePaths::Generator.context = context
        end
        {data: input[:data]}
      end
    end
  end
end
