require 'rails'
require 'ckeditor'

module Ckeditor
  class Engine < ::Rails::Engine
    isolate_namespace Ckeditor

    initializer "ckeditor.assets_precompile", :group => :all do |app|
      app.config.assets.precompile += Ckeditor.assets
    end

    rake_tasks do
      load Ckeditor.root_path.join("lib/tasks/ckeditor.rake")
    end
  end
end
