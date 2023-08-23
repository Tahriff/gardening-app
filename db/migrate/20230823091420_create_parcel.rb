class CreateParcel < ActiveRecord::Migration[7.0]
  def change
    create_table :parcels do |t|

      t.float :size_sqm, null: false

      t.timestamps
    end
  end
end
