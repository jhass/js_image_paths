module JsImagePaths
  module Generator
    cattr_accessor :context

    def self.generate
      image_hash.to_json
    end

    def self.image_hash
      context.environment.each_file.each_with_object({}) do |path, images|
        next unless path.include?('images')

        asset = context.environment.find_asset(path)
        images[asset.logical_path] = context.asset_path(asset.logical_path)
      end
    end
  end
end
