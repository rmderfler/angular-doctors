class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.column :name, :string
    end
  end
end
