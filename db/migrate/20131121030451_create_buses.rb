class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name
      t.integer :type_of_bus

      t.timestamps
    end
  end
end
