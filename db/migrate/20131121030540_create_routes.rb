class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :start_at
      t.string :stop_at
      t.references :bus, index: true

      t.timestamps
    end
  end
end
