module JsImagePaths
  class Engine < Rails::Engine

    isolate_namespace(JsImagePaths)

    initializer('js_image_paths.compile', after: :engines_blank_point, before: :finisher_hook) do |application|
      file_type = 'application/javascript'
      file_type += '+ruby' if Gem::Version.new(::Sprockets::VERSION).segments[0] >= 4

      sprockets_env = application.assets || Sprockets
      sprockets_env.register_preprocessor(file_type, JsImagePaths::Processor)
    end
  end
end
