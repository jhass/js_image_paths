module JsImagePaths
  module Generator
    cattr_accessor :context

    def self.generate
      image_hash.to_json
    end

    def self.image_hash
      context.environment.each_file.each_with_object({}) do |path, images|
        next unless path.start_with?(app_images_path)

        asset = context.environment.find_asset(path)
        images[asset.logical_path] = context.asset_path(asset.logical_path)
      end
    end

    def self.app_images_path
      @app_images_path ||= Rails.root.join('app/assets/images').to_s
    end
  end
end
