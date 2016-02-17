module JsImagePaths
  class Engine < Rails::Engine

    isolate_namespace(JsImagePaths)

    initializer('js_image_paths.compile', after: 'sprockets.environment') do |application|
      sprockets_env = application.assets || Sprockets
      sprockets_env.register_preprocessor('application/javascript', :'js_image_path.compile') do |context, data|
        if context.logical_path == 'js_image_paths'
          JsImagePaths::Generator.context = context
        end
        data
      end
    end
  end
end
