namespace :importmap_package_manager do
  desc "Update importmap packages via importmap-package-manager"
  task update: :environment do
    ImportmapPackageManager::Manager.update!
  end
end
