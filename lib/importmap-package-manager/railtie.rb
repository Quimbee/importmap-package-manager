require 'importmap-package-manager'
require 'rails'

module ImportmapPackageManager
  class Railtie < Rails::Railtie
    railtie_name :importmap_package_manager

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end
