module JsImagePaths
  module Generator
    cattr_accessor :context

    def self.generate
      image_hash.to_json
    end

    def self.image_hash
      images = context.environment.each_logical_path(->(_, path) { path.include? "images" })
      images.each_with_object({}) do |path, images|
        images[path] = context.asset_path(path)
      end
    end
  end
end
