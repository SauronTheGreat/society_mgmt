class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users,:username,:string,:null=>false,:default=>false
    add_column :users,:first_name,:string,:null=>false,:default=>false
    add_column :users,:last_name,:string,:null =>false,:default=>false
    add_column :users,:designation_id,:integer,:default=>1
    add_column :users,:dashboard_id,:integer


  end
end
