class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :stop_name
      t.references :route, index: true

      t.timestamps
    end
  end
end
