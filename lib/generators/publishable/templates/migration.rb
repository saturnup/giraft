class AddPublishableTo<%= table_name.camelize %> < ActiveRecord::Migration
  def change
    add_column :<%= table_name %>, :published, :boolean, null: false, default: false
    add_column :<%= table_name %>, :published_at, :datetime
  end
end
