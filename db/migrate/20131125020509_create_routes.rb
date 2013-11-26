class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :route_id
      t.string :company_code
      t.string :district
      t.string :route_namec
      t.string :route_names
      t.string :route_namee
      t.integer :route_type
      t.string :service_mode
      t.integer :special_type
      t.string :loc_start_namec
      t.string :loc_start_names
      t.string :loc_start_namee
      t.string :loc_end_namec
      t.string :loc_end_names
      t.string :loc_end_namee
      t.float :full_fare
      t.timestamp :last_update_date
    end
  end
end
