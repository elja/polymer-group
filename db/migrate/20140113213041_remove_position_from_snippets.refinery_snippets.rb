# This migration comes from refinery_snippets (originally 6)
class RemovePositionFromSnippets < ActiveRecord::Migration

  def self.up
    remove_column ::Refinery::Snippet.table_name, :position
  end

  def self.down
    add_column(::Refinery::Snippet.table_name, :position, :integer,
               :null => :false, :default => 0)
  end

end
