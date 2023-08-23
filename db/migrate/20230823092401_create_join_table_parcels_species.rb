class CreateJoinTableParcelsSpecies < ActiveRecord::Migration[7.0]
  def change
    create_join_table :parcels, :species do |t|
      t.index [:parcel_id, :species_id]
      t.index [:species_id, :parcel_id]
      t.float :sqm_size, default: 0
      
    end
  end
end
