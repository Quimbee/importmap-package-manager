namespace :importmap_package_manager do
  desc "Install importmap-package-manager"
  task install: :environment do
    File.open(Rails.root.join("config/importmap_packages.yml"), "w") do |f|
      f << %(imports:\n)
      f << %(  # For example:\n)
      f << %(  # lodash: "~> 4.0"\n)
    end

    File.open(Rails.root.join("config/initializers/importmap-package-manager.rb"), "w") do |f|
      f << %(Rails.application.configure do\n)
      f << %(  config.importmap.paths << Rails.root.join\("config/importmap-packages-lock.rb"\)\n)
      f << %(end\n)
    end

    File.open(Rails.root.join("config/importmap.rb"), "a") do |f|
      f << %(\n)
      f << %(# Note: package imports are managed by importmap-package-manager.\n)
      f << %(# To add or update packages, make changes in `config/importmap_packages.yml`,\n)
      f << %(# then run `importmap_package_manager:update` to update `config/importmap-packages-lock.rb`.\n)
      f << %(# That file is included into the importmap via `config/initializers/importmap-package-manager.rb`\n)
    end
  end
end
