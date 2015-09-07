require 'rails/generators/active_record'

class PublishableGenerator < ActiveRecord::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  def copy_migration
    migration_template "migration.rb", "db/migrate/add_publishable_to_#{table_name}.rb"
  end
end
