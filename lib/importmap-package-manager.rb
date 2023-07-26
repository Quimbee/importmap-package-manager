require "importmap-package-manager/version"
require "importmap-package-manager/manager"

module ImportmapPackageManager
  require 'importmap-package-manager/railtie' if defined?(Rails)
end
